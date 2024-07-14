
from datetime import datetime, timedelta
from rest_framework import generics
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework.exceptions import APIException
from rest_framework.authentication import TokenAuthentication
from rest_framework import generics, permissions
from django.conf import settings
from django.core.mail import send_mail
import base64
import json
import string
import random
import pytz
from rest_framework.decorators import api_view, permission_classes
from django_filters.rest_framework import DjangoFilterBackend
from django.db.models import Sum
from social_django.utils import load_strategy, load_backend
from social_core.exceptions import MissingBackend
from social_core.exceptions import AuthException
from django.contrib.auth import login
from google.oauth2 import id_token
from google.auth.transport import requests
import razorpay
from django.http import JsonResponse
from django.shortcuts import get_object_or_404
from django.views.decorators.csrf import csrf_exempt
# from rest_framework_jwt.settings import api_settings
from django.db.models.functions import Lower
from django.core.validators import validate_email
from django.core.exceptions import ValidationError
from django.core.mail import EmailMultiAlternatives
import requests as HttpRequest

from .models import *
from .serializers import *
from .authentication import *
from .paginations import *
from .custom_permissions import *
from .user_token import generate_reset_token
from .utility_functions import decrypt_id
from .filters import DishesFilter

from django.utils import timezone
import logging
logger = logging.getLogger("api.views")

RESET_TOKEN_EXPIRY_MINUTES = 30

class RegisterAPIView(APIView):
    def post(self, request):
        serializer = UserSerializer(data = request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
class LoginAPIView(APIView):
    serializer_class = LoginSerializer
    def post(self, request):
        user = CustomUser.objects.filter(email = request.data['email']).first()

        if not user:
            raise APIException("Invalid Credentials!")
        
        if not user.check_password(request.data['password']):
            raise APIException("Invalid Credentials!")
        
        if not user.is_active:
            raise APIException("Inactive User!")


        # Serialize the data using the serializer
        serializer = self.serializer_class(instance=user)
        
        access_token = create_access_token(user.id)
        refresh_token = create_refresh_token(user.id)
        response = Response()
        expiry_time = datetime.datetime.now() + timedelta(days=7)  # Expires in 7 days
        # be carefull with attribute samesite
        print('setting cookies')
        # response.set_cookie(key='refreshToken', value=refresh_token, httponly=True, expires=expiry_time, samesite='None', secure=True)
        response.set_cookie(key='refreshToken', value=refresh_token, expires=expiry_time, samesite='None', secure=True)
        response.data = {
            'token': access_token,
            'user': serializer.data
        }
        print('response given')
        return response
    

class UserAPIView(APIView):
    authentication_classes = [TokenAuthentication]
    permission_classes = [CheckActiveUserPermission]
    def get(self, request):
        return Response(LoginSerializer(request.user).data)
    
class RefreshAPIView(APIView):
    def post(self, request):
        refresh_token = request.COOKIES.get('refreshToken')
        user_id = decode_refresh_token(refresh_token)
        access_token = create_access_token(user_id)
        return Response({
            'token': access_token
        })

class LogoutAPIView(APIView):
    def post(self, request):
        response = Response()
        response.delete_cookie(key='refreshToken')
        response.data = {
            'message': 'success'
        }
        return response
    
def generate_password(length=10):
    characters = string.ascii_letters + string.digits
    password = ''.join(random.choice(characters) for _ in range(length))
    return password

class AllUsersListAPIView(generics.ListAPIView):  
    queryset = CustomUser.objects.all()
    serializer_class = CustomUserIdNameEmailSerializer 
    authentication_classes = [TokenAuthentication]
    permission_classes = [CheckAdminPermission]


class ForgotPasswordView(APIView):
    def post(self, request):
        serializer = ForgotPasswordSerializer(data=request.data)
        if serializer.is_valid():
            email = serializer.validated_data['email']
            try:
                user = CustomUser.objects.get(email=email)
            except CustomUser.DoesNotExist:
                return Response({'error': 'User not found!'}, status=status.HTTP_404_NOT_FOUND)
            print(user)
            print(user.id)
            # Generate password reset token and send email
            # Implement your logic to generate token and send email here
            reset_token = generate_reset_token(user.id)
            reset_link = f'{settings.FRONTEND_URL}/auth/reset-password?token={reset_token}'
            try:
                send_mail(
                    'Password Reset',
                    f'Click the following link to reset your password: {reset_link}',
                    settings.DEFAULT_FROM_EMAIL,
                    [email],
                    fail_silently=False,
                )
            
            except Exception as e:
                logger.exception(f"Failed to send email: {e}")
                # print(f"Failed to send email! Please try after some time.")
                # raise Exception('Failed to send email: {}'.format(e))
                return Response({'error': 'Failed to send email! Please try after some time.'}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
    
            ResetPasswordToken.objects.create(user_id=user.id, token=reset_token)
            return Response({'message': 'Password reset link sent successfully'}, status=status.HTTP_200_OK)
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        

@api_view(['POST'])
def reset_password(request):
    token = request.data.get('token')
    password = request.data.get('password')

    if not token or not password:
        return Response({'error': 'Token and password are required'}, status=status.HTTP_400_BAD_REQUEST)

    try:
        # Decode the token
        encoded_payload, signature = token.split('.')
        encoded_payload += '=' * ((4 - len(encoded_payload) % 4) % 4)
        decoded_payload = base64.urlsafe_b64decode(encoded_payload.encode('utf-8')).decode('utf-8')
        payload = json.loads(decoded_payload)

        # Check if token is expired
        timestamp = payload['timestamp']
        expiry_time = datetime.timedelta(minutes=RESET_TOKEN_EXPIRY_MINUTES)
        token_time = datetime.datetime.fromtimestamp(timestamp, tz=pytz.utc)
        if timezone.now() - token_time > expiry_time:
            return Response({'error': 'Token has expired'}, status=status.HTTP_400_BAD_REQUEST)

        user_id = payload['user_id']
        reset_token_record = ResetPasswordToken.objects.filter(user_id=user_id, token=token, is_reset=False).order_by('-created_at')
        
        # Get the first record if any
        if reset_token_record.exists():
            record = reset_token_record.first()
            # Update is_reset to True
            record.is_reset = True
            record.updated_at = datetime.datetime.now()
            record.save() # Successfully updated
        else:
            return Response({'error': 'You have already reset your password using this token!'}, status=status.HTTP_400_BAD_REQUEST)


        # Update user's password
        user = CustomUser.objects.get(pk=user_id)
        user.set_password(password)
        user.save()

        return Response({'success': 'Password reset successfully'}, status=status.HTTP_200_OK)

    except Exception as e:
        return Response({'error': str(e)}, status=status.HTTP_400_BAD_REQUEST)
    

@api_view(['GET'])
def check_reset_token(request, token):
    try:
        # Decode the token
        encoded_payload, signature = token.split('.')
        encoded_payload += '=' * ((4 - len(encoded_payload) % 4) % 4)
        decoded_payload = base64.urlsafe_b64decode(encoded_payload.encode('utf-8')).decode('utf-8')
        payload = json.loads(decoded_payload)

        # Check if token is expired
        timestamp = payload['timestamp']
        expiry_time = datetime.timedelta(minutes=RESET_TOKEN_EXPIRY_MINUTES)
        token_time = datetime.datetime.fromtimestamp(timestamp, tz=pytz.utc)
        if timezone.now() - token_time > expiry_time:
            return Response({'error': 'Token has expired'}, status=status.HTTP_400_BAD_REQUEST)

        user_id = payload['user_id']
        reset_token_record = ResetPasswordToken.objects.filter(user_id=user_id, token=token, is_reset=False).order_by('-created_at')
        
        # Get the first record if any
        if reset_token_record.exists():
            return Response({'status': 'success', 'message': 'OK'}, status=status.HTTP_200_OK)
        else:
            return Response({'error': 'You have already reset your password using this token!'}, status=status.HTTP_400_BAD_REQUEST)

    except Exception as e:
        return Response({'error': str(e)}, status=status.HTTP_400_BAD_REQUEST)


class ChangePasswordAPIView(APIView):
    authentication_classes = [TokenAuthentication]
    permission_classes = [CheckActiveUserPermission]

    def post(self, request):
        serializer = ChangePasswordSerializer(data=request.data)
        if serializer.is_valid():
            user = request.user
            old_password = serializer.validated_data.get('old_password')
            new_password = serializer.validated_data.get('new_password')
            # Check if the old password matches the user's current password
            if not user.check_password(old_password):
                return Response({'error': 'Invalid old password'}, status=status.HTTP_400_BAD_REQUEST)
            # Change the user's password
            user.set_password(new_password)
            user.save()
            return Response({'message': 'Password changed successfully'}, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    

@api_view(['POST'])
@permission_classes([CheckActiveUserPermission])
def create_cuisine(request):
    if UserCuisine.objects.filter(user=request.user, is_completed=False).exists():
        return Response({'error': 'You have an incomplete cuisine. Please complete it before creating a new one.'}, status=status.HTTP_400_BAD_REQUEST)
    
    serializer = UserCuisineSerializer(data=request.data)
    if serializer.is_valid():
        user = request.user

        # Query for free tokens first
        free_token_type = TokenType.objects.get(type='Free')
        paid_token_type = TokenType.objects.get(type='Paid')
        print(free_token_type)
        print(paid_token_type)
        user_tokens = UserToken.objects.filter(
            user=user,
            is_used=False,
            used_token_count__lt=models.F('token_count')
        ).order_by('created_at')
        print(user_tokens)
        free_tokens = user_tokens.filter(token_type=free_token_type)
        paid_tokens = user_tokens.filter(token_type=paid_token_type)
        print(free_tokens)
        print(paid_tokens)
        token = None

        if free_tokens.exists():
            token = free_tokens.first()
        elif paid_tokens.exists():
            token = paid_tokens.first()
        print(token)
        if token:
            token.used_token_count += 1
            if token.used_token_count >= token.token_count:
                token.is_used = True
            token.save()
            
            instance = serializer.save(user=request.user, token=token)
            return Response(UserCuisineSerializer(instance).data, status=status.HTTP_201_CREATED)
        else:
            return Response({'error': 'Insufficient token'}, status=status.HTTP_400_BAD_REQUEST)
    
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@api_view(['PATCH'])
@permission_classes([CheckActiveUserPermission])
def edit_cuisine_name(request):
    name = request.data.get('name')
    
    try:
        user_cuisine  = UserCuisine.objects.get(is_completed=False, user=request.user)
        if name is None: return Response({'error': "Name can not be empty"}, status=status.HTTP_400_BAD_REQUEST)
        if not name.strip(): return Response({'error': "Name can not be empty"}, status=status.HTTP_400_BAD_REQUEST)
        user_cuisine.name = name
        user_cuisine.updated_at = timezone.now()
        user_cuisine.save()
        return Response({'status': 'Name updated successfully'}, status=status.HTTP_200_OK)
    except UserCuisine.DoesNotExist:
        return Response({'error': 'Record not found or you do not have permission to edit this record.'}, status=status.HTTP_404_NOT_FOUND)
    except Exception as e:
        print(e)
        return Response({'error':'Internal Server Error'}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)


@api_view(['POST'])
@permission_classes([CheckActiveUserPermission])
def add_dish(request, pk=None):
    dish_id = request.data.get('dish')

    try:
        if pk is None:
            user_cuisine = UserCuisine.objects.get(user=request.user, is_completed=False)
        else:
            decrypted_pk = decrypt_id(pk)
            user_cuisine = UserCuisine.objects.get(id=decrypted_pk, is_completed=False)
            if request.user.id != user_cuisine.user.id:
                if user_cuisine.is_public == False:
                    return Response({'error': 'Group is no longer public!'}, status=status.HTTP_400_BAD_REQUEST)
    except UserCuisine.DoesNotExist:
        return Response({'error': 'Menu not found or maybe already completed!'}, status=status.HTTP_400_BAD_REQUEST)
    
    if request.user.id != user_cuisine.user.id:
        try:
            # MenuGroupUserRequest.objects.get(user=request.user, is_allowed=True)  # uncomment if apply request and accept/deny modal
            pass 
        except MenuGroupUserRequest.DoesNotExist:
            return Response({'error': 'Only group member or admin can add dishes to this menu'}, status=status.HTTP_400_BAD_REQUEST)
    
    try:
        dish = Dishes.objects.get(id=dish_id)
    except Dishes.DoesNotExist:
        return Response({'error': 'Dish not found!'}, status=status.HTTP_404_NOT_FOUND)



    dish_data = {
        'dish': dish.id,
        'user': request.user.id,
        'cuisine': user_cuisine.id
    }

    serializer = CuisineItemsSerializer(data=dish_data)
    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@api_view(['GET'])
def user_cuisine_detail(request, pk):
    try:
        # Decrypt the ID
        decrypted_pk = decrypt_id(pk)
        user_cuisine = UserCuisine.objects.get(pk=decrypted_pk)
    except UserCuisine.DoesNotExist:
        return Response({'error': 'UserCuisine not found or already completed'}, status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = UserCuisineDetailsSerializer(user_cuisine, context={'request': request})
        return Response(serializer.data)
    else:
        return Response({'error': 'Method not allowed'}, status=status.HTTP_405_METHOD_NOT_ALLOWED)
    

@api_view(['GET'])
@permission_classes([CheckActiveUserPermission])
def user_cuisine_detail2(request):
    try:
        user_cuisine = UserCuisine.objects.get(user=request.user, is_completed=False)
    except UserCuisine.DoesNotExist:
        return Response({'error': 'UserCuisine not found or already completed'}, status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = UserCuisineDetailsSerializer2(user_cuisine)
        return Response(serializer.data)
    else:
        return Response({'error': 'Method not allowed'}, status=status.HTTP_405_METHOD_NOT_ALLOWED)
    

@api_view(['PATCH'])
@permission_classes([CheckActiveUserPermission])
def mark_cuisine_complete(request):
    user = request.user
    
    try:
        user_cuisine = UserCuisine.objects.get(user=user, is_completed=False)
        total_cuisine_items = CuisineItems.objects.filter(user=user, cuisine=user_cuisine).count()
        if(total_cuisine_items == 0):
            return Response({'error': 'Add atleast one item to complete you menu'}, status=status.HTTP_400_BAD_REQUEST)
        user_cuisine.is_completed = True
        user_cuisine.updated_at = timezone.now()
        user_cuisine.save()
        
        return Response({'status': 'Cuisine marked as completed'}, status=status.HTTP_200_OK)
    except UserCuisine.DoesNotExist:
        return Response({'error': 'No incomplete cuisine found for this user'}, status=status.HTTP_404_NOT_FOUND)
    

@api_view(['PATCH'])
@permission_classes([CheckActiveUserPermission])
def mark_cuisine_private_or_public(request):
    user = request.user
    
    try:
        user_cuisine = UserCuisine.objects.get(user=user, is_completed=False)
        user_cuisine.is_public = not user_cuisine.is_public
        user_cuisine.updated_at = timezone.now()
        user_cuisine.save()
        
        return Response({'status': 'Changed menu to '+('public' if user_cuisine.is_public else 'private')}, status=status.HTTP_200_OK)
    except UserCuisine.DoesNotExist:
        return Response({'error': 'No incomplete cuisine found for this user'}, status=status.HTTP_404_NOT_FOUND)
    

class UserCuisineListAPIView(generics.ListAPIView):
    serializer_class = CompleteUserCuisineSerializer
    permission_classes = [CheckActiveUserPermission]
    pagination_class = MyPageNumberPagination

    def get_queryset(self):
        return UserCuisine.objects.filter(
            user=self.request.user,
            is_completed=True  # Filter where is_completed is True
        ).order_by('-updated_at')
    

class DishesListAPIView(generics.ListAPIView):
    queryset = Dishes.objects.all()
    serializer_class = DishesSerializer
    filter_backends = [DjangoFilterBackend]
    filterset_class = DishesFilter
    pagination_class = MyPageNumberPagination

    def get_serializer_context(self):
        context = super().get_serializer_context()
        context.update({"request": self.request})
        return context
    

class CDishesListAPIView(generics.ListAPIView):
    queryset = Dishes.objects.all()
    serializer_class = DishesSerializer
    filter_backends = [DjangoFilterBackend]
    filterset_class = DishesFilter
    pagination_class = MyPageNumberPagination

    def get_serializer_context(self):
        context = super().get_serializer_context()
        context.update({"request": self.request, "pk": decrypt_id(self.kwargs.get('pk'))})
        return context
    


class CuisineItemsListAPIView(APIView):
    permission_classes = [CheckActiveUserPermission]

    def get(self, request, *args, **kwargs):
        user = request.user
        cuisine_id = self.request.query_params.get('cuisine_id', None)

        if cuisine_id:
            # Get all records of logged in user and cuisine with that cuisine id
            cuisine_items = CuisineItems.objects.filter(user=user, cuisine=cuisine_id)
        else:
            # Get all records from CuisineItems where logged in user and cuisine_id from UserCuisine where is_completed=False
            incomplete_cuisine = UserCuisine.objects.filter(user=user, is_completed=False).first()
            if incomplete_cuisine:
                cuisine_items = CuisineItems.objects.filter(user=user, cuisine=incomplete_cuisine)
            else:
                return Response({'error': 'No incomplete cuisine found for the user'}, status=status.HTTP_400_BAD_REQUEST)

        serializer = CuisineItemsSerializer(cuisine_items, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)
    

class DeleteCuisineItemAPIView(APIView):
    permission_classes = [CheckActiveUserPermission]

    def post(self, request, dish_id):
        user = request.user
        incomplete_cuisine = UserCuisine.objects.filter(user=user, is_completed=False).first()
        
        if not incomplete_cuisine:
            return Response({'error': 'No incomplete cuisine found for the user'}, status=status.HTTP_400_BAD_REQUEST)

        user_ids = request.data.get('user_ids', None)

        try:
            if user_ids is not None:
                cuisine_items = CuisineItems.objects.filter(cuisine=incomplete_cuisine, dish=dish_id, user__in=user_ids)
            else:
                cuisine_items = CuisineItems.objects.filter(cuisine=incomplete_cuisine, dish=dish_id)
            if cuisine_items.count() == 0:
                return Response({'error': 'Dish not found'}, status=status.HTTP_404_NOT_FOUND)
            
            for cuisine_item in cuisine_items:
                MenuItemsDeleteHistory(
                    cuisine = cuisine_item.cuisine,
                    add_by_user = cuisine_item.user,
                    remove_by_user = user,
                    dish = cuisine_item.dish,
                    created_at = cuisine_item.created_at
                ).save()
                cuisine_item.delete()
            return Response({'success': 'Cuisine item deleted successfully'}, status=status.HTTP_204_NO_CONTENT)
        except CuisineItems.DoesNotExist:
            return Response({'error': 'Cuisine item not found'}, status=status.HTTP_404_NOT_FOUND)
        


class VisitorCreateAPIView(APIView):
    permission_classes = [permissions.AllowAny]  # Allow any to make it publicly accessible

    def post(self, request, *args, **kwargs):
        data = {
            'ip_address': request.META.get('REMOTE_ADDR'),
            'user_agent': request.META.get('HTTP_USER_AGENT'),
        }
        serializer = VisitorSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    

class DishDetailView(generics.RetrieveAPIView):
    queryset = Dishes.objects.all()
    serializer_class = DishesSerializer

    def get_serializer_context(self):
        context = super().get_serializer_context()
        context.update({"request": self.request})
        return context
    

class CountryListView(generics.ListAPIView):
    queryset = Countries.objects.all().order_by('name')
    serializer_class = CountrySerializer
    

@api_view(['GET'])
@permission_classes([CheckActiveUserPermission])
def get_user_tokens(request):
    user = request.user
    tokens = UserToken.objects.filter(user=user).order_by('-created_at')
    serializer = UserTokenSerializer(tokens, many=True)
    return Response(serializer.data, status=status.HTTP_200_OK)


@api_view(['GET'])
@permission_classes([CheckActiveUserPermission])
def get_sum_of_tokens(request):
    try:
        user = request.user
        total_tokens = UserToken.objects.filter(user=user).aggregate(Sum('token_count'))['token_count__sum'] or 0
        total_cuisine = UserCuisine.objects.filter(user=user).count()
        remaining_tokens = total_tokens - total_cuisine
        return Response({'total_tokens': total_tokens, 'remaining_tokens': remaining_tokens}, status=status.HTTP_200_OK)
    except CustomUser.DoesNotExist:
        return Response({'error': 'User not found'}, status=status.HTTP_404_NOT_FOUND)
    

# class GoogleView(APIView):
#     def post(self, request):
#         import requests
#         backend = 'google-oauth2'
#         token = request.data.get('token')
#         try:
#             strategy = load_strategy(request)
#             backend = load_backend(strategy, backend, redirect_uri=None)
#             user = backend.do_auth(token)
#             print(user)
#         except MissingBackend:
#             print({'error': 'Invalid backend'})
#             return Response({'error': 'Invalid backend'}, status=status.HTTP_404_NOT_FOUND)
#         except Exception as e:
#             print(f'Error: {e}')
#             return Response({'error': 'Internal Server Error'}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

#         # print(token)
#         # r = requests.get('https://www.googleapis.com/oauth2/v2/userinfo', params={'access_token': token})
#         # data = json.loads(r.text)

#         # if 'error' in data:
#         #     content = {'message': 'wrong google token / this google token is already expired.'}
#         #     return Response(content)
#         return Response({'token': token, 'data': data}, status=status.HTTP_200_OK)
    # backend = 'google-oauth2'
    # return ""
    # try:
    #     strategy = load_strategy(request)
    #     backend = load_backend(strategy, backend, redirect_uri=None)
    #     user = backend.do_auth(token)
    #     print(user)
    #     if user:
    #         login(request, user)
    #         serializer = LoginSerializer(instance=user)
    #         # jwt_payload_handler = api_settings.JWT_PAYLOAD_HANDLER
    #         # jwt_encode_handler = api_settings.JWT_ENCODE_HANDLER
    #         # payload = jwt_payload_handler(user)
    #         # jwt_token = jwt_encode_handler(payload)
    #         # return JsonResponse({'token': jwt_token})
    #         access_token = create_access_token(user.id)
    #         refresh_token = create_refresh_token(user.id)
    #         response = Response()
    #         expiry_time = datetime.datetime.now() + timedelta(days=7)  # Expires in 7 days
    #         # be carefull with attribute samesite
    #         # response.set_cookie(key='refreshToken', value=refresh_token, httponly=True, expires=expiry_time, samesite='None', secure=True)
    #         response.set_cookie(key='refreshToken', value=refresh_token, expires=expiry_time, samesite='None', secure=True)
    #         response.data = {
    #             'token': access_token,
    #             'user': serializer.data
    #         }
    #         return response
    # except MissingBackend:
    #     print({'error': 'Invalid backend'})
    #     # return JsonResponse({'error': 'Invalid backend'}, status=400)


def verify_google_token(token):
    try:
        # Specify the CLIENT_ID of the app that accesses the backend
        idinfo = id_token.verify_oauth2_token(token, requests.Request(), '266358466687-fnci5rjivoprv2cnrss8bhmgdpingnoh.apps.googleusercontent.com')

        # ID token is valid. Get the user's Google Account ID from the decoded token
        userid = idinfo['sub']
        return idinfo
    except ValueError:
        # Invalid token
        return None
    

@api_view(['POST'])
def google_login(request):
    token = request.data.get('token')
    if not token:
        return Response({'error': 'Token is required'}, status=400)

    idinfo = verify_google_token(token)
    if not idinfo:
        return Response({'error': 'Invalid token'}, status=400)

    backend = 'google-oauth2'
    email = idinfo.get('email')
    name = idinfo.get('name')
    first_name = None
    last_name = None
    try:
        user = CustomUser.objects.get(email=email)
        if user and user.is_active:
            pass
        else:
            return Response({'error': 'Authentication failed'}, status=401)
    except CustomUser.DoesNotExist:
        name_list = name.split()
        if len(name_list) >= 1:
            first_name = name_list[0]
            last_name =' '.join(name_list[1:]) if len(name_list) > 1 else None
        user = CustomUser(email=email, first_name=first_name, last_name=last_name, login_provider='google')
        user.set_unusable_password()
        user.save()

    serializer = LoginSerializer(instance=user)
        
    access_token = create_access_token(user.id)
    refresh_token = create_refresh_token(user.id)
    response = Response()
    expiry_time = datetime.datetime.now() + timedelta(days=7)  # Expires in 7 days
    response.set_cookie(key='refreshToken', value=refresh_token, expires=expiry_time, samesite='None', secure=True)
    response.data = {
        'token': access_token,
        'user': serializer.data
    }
    UserLoginHistory(user=user, login_provider='google').save()
    return response


@api_view(['POST'])
@permission_classes([CheckActiveUserPermission])
def create_order(request):
    amount = request.data.get('amount')
    tokens = request.data.get('tokens')
    user = request.user

    client = razorpay.Client(auth=(settings.RAZORPAY_KEY_ID, settings.RAZORPAY_KEY_SECRET))
    payment = client.order.create({'amount': amount * 100, 'currency': 'INR', 'payment_capture': '1'})

    Payment.objects.create(
        user=user,
        order_id=payment['id'],
        amount=amount,
        tokens=tokens,
        status='created'
    )
    
    return JsonResponse({
        'order_id': payment['id'],
        'amount': amount,
        'tokens': tokens,
        'razorpay_key_id': settings.RAZORPAY_KEY_ID,
    })

@api_view(['POST'])
@permission_classes([CheckActiveUserPermission])
def payment_callback(request):
    payment_id = request.data.get('razorpay_payment_id')
    order_id = request.data.get('razorpay_order_id')
    signature = request.data.get('razorpay_signature')

    client = razorpay.Client(auth=(settings.RAZORPAY_KEY_ID, settings.RAZORPAY_KEY_SECRET))
    try:
        client.utility.verify_payment_signature({
            'razorpay_order_id': order_id,
            'razorpay_payment_id': payment_id,
            'razorpay_signature': signature,
        })
        # Payment is successful
        payment = Payment.objects.get(order_id=order_id)
        payment.payment_id = payment_id
        payment.signature = signature
        payment.status = 'successful'
        payment.save()

        # Update user tokens
        user_tokens, created = UserToken.objects.get_or_create(user=request.user, payment=payment, token_count=payment.tokens, token_type=TokenType.objects.get(type='Paid'))
        user_tokens.save()

        # Update user tokens here
        return JsonResponse({'status': 'Payment successful'})
    except:
        payment = Payment.objects.get(order_id=order_id)
        payment.status = 'failed'
        payment.save()
        return JsonResponse({'status': 'Payment failed'}, status=400)
    

@api_view(['POST'])
def payment_dismissed(request):
    order_id = request.data.get('order_id')

    try:
        payment = Payment.objects.get(order_id=order_id)
        payment.status = 'dismissed'
        payment.save()
        return JsonResponse({'status': 'Payment dismissed'})
    except Payment.DoesNotExist:
        return JsonResponse({'error': 'Order not found'}, status=404)


@api_view(['POST'])
def check_email(request):
    email = request.data.get('email')
    if not email:
        return Response({'error': 'Email is required'}, status=400)
    
    email_exists = CustomUser.objects.filter(email=email).exists()
    return Response({'exists': email_exists})


@api_view(['POST'])
def check_mobile(request):
    mobile = request.data.get('mobile')
    if not mobile:
        return Response({'error': 'Mobile is required'}, status=400)
    
    mobile_exists = CustomUser.objects.filter(mobile=mobile).exists()
    return Response({'exists': mobile_exists})


@api_view(['PUT'])
@permission_classes([CheckActiveUserPermission])
def update_user(request):
    user = get_object_or_404(CustomUser, id=request.user.id)
    serializer = UserUpdateSerializer(user, data=request.data, partial=True)

    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data, status=status.HTTP_200_OK)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@api_view(['GET'])
@permission_classes([CheckActiveUserPermission])
def get_successful_payments(request):
    user = request.user
    payments = Payment.objects.filter(user=user, status='successful')
    serializer = PaymentSerializer(payments, many=True)
    return Response(serializer.data, status=status.HTTP_200_OK)

def verify_facebook_token(token):
    app_id = '345095785294223'
    app_secret = '2e2cd31ec04bb45053d8e087beed06e0'
    
    url = f'https://graph.facebook.com/debug_token?input_token={token}&access_token={app_id}|{app_secret}'
    response = requests.get(url)
    if response.status_code != 200:
        return None

    data = response.json().get('data')
    if data and data.get('is_valid'):
        user_info_url = f'https://graph.facebook.com/me?fields=id,name,email&access_token={token}'
        user_info_response = requests.get(user_info_url)
        if user_info_response.status_code == 200:
            return user_info_response.json()
    
    return None

@api_view(['POST'])
def facebook_login(request):
    data = json.loads(request.body)
    print(data)
    token = request.data.get('authToken', None)
    if not token:
        return Response({'error': 'Token is required'}, status=400)

    # userInfo = verify_facebook_token(token)
    # if not userInfo:
    #     return Response({'error': 'Invalid token'}, status=400)
    try:
        user = CustomUser.objects.get(email=data.get('email'))
        if user and user.is_active:
            pass
        else:
            return Response({'error': 'Authentication failed'}, status=401)
    except CustomUser.DoesNotExist:
        user = CustomUser.objects.get(email=data.get('email'), first_name=data.get('firstName', None), last_name=data.get('lastName', None))
        user.set_unusable_password()
        user.save()

    serializer = LoginSerializer(instance=user)
    
    access_token = create_access_token(user.id)
    refresh_token = create_refresh_token(user.id)
    response = Response()
    expiry_time = datetime.datetime.now() + timedelta(days=7)  # Expires in 7 days
    response.set_cookie(key='refreshToken', value=refresh_token, expires=expiry_time, samesite='None', secure=True)
    response.data = {
        'token': access_token,
        'user': serializer.data
    }
    UserLoginHistory(user=user, login_provider='facebook').save()
    return response


@api_view(['POST'])
@permission_classes([CheckActiveUserPermission])
def menu_group_request(request, pk):
    user = request.user
    
    try:
        user_cuisine = UserCuisine.objects.get(pk=pk)
        if user_cuisine.is_completed:
            return Response({'error': "Can't send request to completed menu!"}, status=status.HTTP_400_BAD_REQUEST)
        if not user_cuisine.is_public:
            return Response({'error': "Can't send request to private menu!"}, status=status.HTTP_400_BAD_REQUEST)
        if user.id == user_cuisine.user.id:
            return Response({'error': "You Can't add yourself as a group member!"}, status=status.HTTP_400_BAD_REQUEST)
        group_user_details = MenuGroupUserRequest.objects.filter(user=user, menu=user_cuisine)
        if group_user_details.count() == 0:
            try:
                leave_obj = MenuGroupLeave.objects.get(user=user, menu=user_cuisine)
                MenuGroupLeaveHistory(
                    menu=leave_obj.menu, 
                    user=leave_obj.user, 
                    is_allowed=leave_obj.is_allowed,
                    created_at = leave_obj.created_at,
                    updated_at = leave_obj.updated_at,
                    leaving_at = leave_obj.leaving_at
                    ).save()
                leave_obj.delete()  # Delete any existing leave request for the same menu

            except MenuGroupLeave.DoesNotExist:
                pass
            MenuGroupUserRequest(user=user, menu=user_cuisine).save()
            return Response({'status': 'Request sent successfully'}, status=status.HTTP_200_OK)
        else:
            group_user_detail = group_user_details.first()
            if group_user_detail.is_allowed == True:
                return Response({'status': 'You already added to this menu'}, status=status.HTTP_200_OK)
            if group_user_detail.is_allowed == False:
                return Response({'status': 'Your request is denied by the menu admin'}, status=status.HTTP_200_OK)
            else:
                return Response({'status': 'Your request is pending'}, status=status.HTTP_200_OK)
    except UserCuisine.DoesNotExist:
        return Response({'error': 'Menu not found!'}, status=status.HTTP_404_NOT_FOUND)
    except Exception as e:
        return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
    

@api_view(['POST'])
@permission_classes([CheckActiveUserPermission])
def menu_group_leave(request, pk):
    user = request.user
    
    try:
        user_cuisine = UserCuisine.objects.get(pk=pk)
        if user_cuisine.is_completed:
            return Response({'error': "Can't send request to completed menu!"}, status=status.HTTP_400_BAD_REQUEST)
        if not user_cuisine.is_public:
            return Response({'error': "Can't send request to private menu!"}, status=status.HTTP_400_BAD_REQUEST)
        
        if user.id == user_cuisine.user.id:
            return Response({'error': "Not Found"}, status=status.HTTP_404_NOT_FOUND)
        group_user_details = MenuGroupUserRequest.objects.filter(user=user, menu=user_cuisine)
        if group_user_details.count() == 0:
            return Response({'error': "Not Found!"}, status=status.HTTP_404_NOT_FOUND)
        else:
            group_leave_detail = group_user_details.first()
            MenuGroupLeave(
                menu=group_leave_detail.menu, 
                user=group_leave_detail.user, 
                is_allowed=group_leave_detail.is_allowed,
                created_at = group_leave_detail.created_at,
                updated_at = group_leave_detail.updated_at
                ).save()
            group_leave_detail.delete()  # Delete any existing leave request for the same menu
            return Response({'status': 'You successfully leave this group'}, status=status.HTTP_200_OK)
    except UserCuisine.DoesNotExist:
        return Response({'error': 'Menu not found!'}, status=status.HTTP_404_NOT_FOUND)
    except Exception as e:
        return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)


@api_view(['PATCH'])
@permission_classes([CheckActiveUserPermission])
def update_group_req_status(request, pk):
    user = request.user
    try:
        request_instance = MenuGroupUserRequest.objects.get(pk=pk)
    except MenuGroupUserRequest.DoesNotExist:
        return Response({'error': 'Request not found!'}, status=status.HTTP_404_NOT_FOUND)
    
    if user.id != request_instance.menu.user.id:
        return Response({'error': "You can't update this request!"}, status=status.HTTP_403_FORBIDDEN)

    serializer = MenuGroupUserRequestSerializer(request_instance, data=request.data, partial=True)
    if serializer.is_valid():
        request_instance.updated_at = timezone.now()
        serializer.save()
        # return Response(serializer.data)
        return Response({'status': "Status updated successfully"}, status=status.HTTP_200_OK)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@api_view(['GET'])
def get_dishes_by_name(request, name):
    try:
        dishes = Dishes.objects.annotate(name_lower=Lower('name')).filter(name_lower__icontains=name.lower()).order_by('name_lower')
        serializer = DishesSerializer3(dishes, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)
    except Exception as e:
        return Response({'error': str(e)}, status=status.HTTP_400_BAD_REQUEST)


@api_view(['GET'])
@permission_classes([CheckActiveUserPermission])
def get_menus_count(request):
    user = request.user
    menus_count = UserCuisine.objects.filter(user=user).count()
    return Response({'total_menus': menus_count}, status=status.HTTP_200_OK)



@api_view(['GET'])
def get_total_menus_visitors(request):
    menus_count = UserCuisine.objects.count()
    visitors_count = Visitor.objects.count()
    return Response({'total_menus': menus_count, 'visitors_count':visitors_count}, status=status.HTTP_200_OK)


class CaterersFilterView(APIView):
    
    def get(self, request, *args, **kwargs):
        country_id = request.query_params.get('country')
        state_ids = request.query_params.get('states', '').split(',')
        city_ids = request.query_params.get('cities', '').split(',')

        if not country_id:
            return Response({"error": "Country id is required"}, status=status.HTTP_400_BAD_REQUEST)

        try:
            # Convert state_ids and city_ids to lists of integers, handle empty strings
            state_ids = [int(state_id) for state_id in state_ids if state_id]
            city_ids = [int(city_id) for city_id in city_ids if city_id]
            
            # Base queryset filtering by country
            states_queryset = States.objects.filter(country_id=country_id)
            cities_queryset = Cities.objects.filter(state__country_id=country_id)

            # Further filter by states if provided
            if state_ids:
                states_queryset = states_queryset.filter(id__in=state_ids)
                cities_queryset = cities_queryset.filter(state_id__in=state_ids)

            # Further filter by cities if provided
            if city_ids:
                cities_queryset = cities_queryset.filter(id__in=city_ids)

            # Get filtered caterers
            caterers = Caterers.objects.filter(city__in=cities_queryset) & Caterers.objects.filter(city__state__in=states_queryset)
            paginator = MyPageNumberPagination()
            result_page = paginator.paginate_queryset(caterers.distinct(), request)
            serializer = CaterersSerializer(result_page, many=True)
            return paginator.get_paginated_response(serializer.data)
        except ValueError:
            return Response({"error": "Invalid state or city IDs"}, status=status.HTTP_400_BAD_REQUEST)
        


class CatersEmail(APIView):
    def post(self, request, pk):
        menu_id = decrypt_id(pk)
        serializer = DataEntrySerializer(data=request.data)

        if serializer.is_valid():
            cater_ids = serializer.validated_data['cater_ids']
            email_body = serializer.validated_data['email_body']
            menu_file = serializer.validated_data['menu_file']
            
            created_ids = []
            valid_emails = []
            valid_email_caters = []

            for cater_id in cater_ids:
                try:
                    cater = Caterers.objects.get(id=cater_id)
                    if cater.email:
                        try:
                            validate_email(cater.email)
                            valid_emails.append(cater.email)
                            valid_email_caters.append(cater)
                        except ValidationError:
                            continue

                    data_entry = DataEntry.objects.create(
                        menu_file=menu_file,
                        cater=cater,
                        email_body=email_body,
                        email_prefix=str(menu_id),
                        menu_id=menu_id
                    )
                    created_ids.append(data_entry.id)
                except Caterers.DoesNotExist:
                    return Response({"error": f"Caterer with id {cater_id} does not exist"}, status=status.HTTP_400_BAD_REQUEST)

            # Send bulk email
            if valid_emails:
                from_email = settings.DEFAULT_FROM_EMAIL
                subject = "Quotation request for the menu"

                html_content = f"""
                <html>
                    <body>
                        <p>{email_body}</p>
                    </body>
                </html>
                """
                email = EmailMultiAlternatives(subject, email_body, from_email, valid_emails)
                email.attach_alternative(html_content, "text/html")
                email.send()

                # Attach the incoming PDF
                menu_file.open()
                email.attach(menu_file.name, menu_file.read(), 'application/pdf')
                menu_file.close()

                email.send()

                # Update email_send flag for successful emails
                for cater in valid_email_caters:
                    cater.email_send = True
                    cater.save()

            response_data = {
                "created_ids": created_ids,
                "email_count": len(valid_emails),
                "emailed_caters": [cater.email for cater in valid_email_caters]
            }

            return Response(response_data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    

class AllCitiesListAPIView(APIView):
    def get(self, request):
        cities = Cities.objects.all().order_by('name')
        serializer = CitiesSerializer2(cities, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)


def linkedin_login(linkedInUserData):
    email = linkedInUserData.get('email')
    name = linkedInUserData.get('name')
    first_name = None
    last_name = None
    try:
        user = CustomUser.objects.get(email=email)
        if user and user.is_active:
            pass
        else:
            return Response({'error': 'Authentication failed'}, status=401)
    except CustomUser.DoesNotExist:
        name_list = name.split()
        if len(name_list) >= 1:
            first_name = name_list[0]
            last_name =' '.join(name_list[1:]) if len(name_list) > 1 else None
        user = CustomUser(email=email, first_name=first_name, last_name=last_name, login_provider='linkedin')
        user.set_unusable_password()
        user.save()

    serializer = LoginSerializer(instance=user)
        
    access_token = create_access_token(user.id)
    refresh_token = create_refresh_token(user.id)
    response = Response()
    expiry_time = datetime.datetime.now() + timedelta(days=7)  # Expires in 7 days
    response.set_cookie(key='refreshToken', value=refresh_token, expires=expiry_time, samesite='None', secure=True)
    response.data = {
        'token': access_token,
        'user': serializer.data
    }
    UserLoginHistory(user=user, login_provider='linkedin').save()
    return response

class LinkedInAuthView(APIView):
    def get(self, request, *args, **kwargs):
        code = request.query_params.get('code')

        if not code:
            return Response({"error": "Missing code parameter"}, status=status.HTTP_400_BAD_REQUEST)

        # Exchange code for access token
        access_token_url = "https://www.linkedin.com/oauth/v2/accessToken"
        access_token_payload = {
            "grant_type": "authorization_code",
            "code": code,
            "redirect_uri": "http://localhost:4200/linkedinLoginResponse",
            "client_id": settings.LINKEDIN_CLIENT_ID,
            "client_secret": settings.LINKEDIN_CLIENT_SECRET
        }

        headers = {
            'Content-Type': 'application/x-www-form-urlencoded'
        }

        token_response = HttpRequest.post(access_token_url, data=access_token_payload, headers=headers)
        token_data = token_response.json()

        if "access_token" not in token_data:
            return Response({"error": "Failed to obtain access token"}, status=status.HTTP_400_BAD_REQUEST)

        access_token = token_data['access_token']
        print(access_token)
        # Use access token to get user info
        user_info_url = "https://api.linkedin.com/v2/userinfo"
        user_info_headers = {
            "Authorization": f"Bearer {access_token}"
        }

        user_info_response = HttpRequest.get(user_info_url, headers=user_info_headers)
        user_info_data = user_info_response.json()
        
        
        
        if user_info_response.status_code != 200:
            return Response({"error": "Failed to obtain user info"}, status=status.HTTP_400_BAD_REQUEST)

        try:
            return linkedin_login(user_info_data)
        except:
            return Response({"error": "Failed to authenticate user"}, status=status.HTTP_400_BAD_REQUEST)