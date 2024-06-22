
from datetime import datetime, timedelta
from rest_framework import generics
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework.exceptions import APIException
from rest_framework.authentication import TokenAuthentication
from django.conf import settings
from django.core.mail import send_mail
import base64
import json
import string
import random
import pytz
from rest_framework.decorators import api_view

from .models import *
from .serializers import *
from .authentication import *
from .paginations import *
from .custom_permissions import *
from .user_token import generate_reset_token

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
        return Response(LoginUserSerializer(request.user).data)
    
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