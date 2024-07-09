
from rest_framework import serializers
from django.utils import timezone
from .models import *
from .custom_permissions import CustomBasePermissions
from .utility_functions import encrypt_id


class CustomUserIdNameEmailSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser
        fields = ['id', 'first_name', 'last_name', 'email']

class CountrySerializer(serializers.ModelSerializer):
    class Meta:
        model = Countries
        fields = ['id', 'name', 'phone']

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser
        fields = ['id', 'first_name', 'last_name', 'email', 'password', 'country', 'mobile', 'is_staff', 'is_superuser', 'is_active']
        extra_kwargs = {
            'password': {'write_only': True}
        }

    def create(self, validated_data):
        password = validated_data.pop('password', None)
        instance = self.Meta.model(**validated_data)
        if password is not None:
            instance.set_password(password)
        instance.save()
        return instance
    
    def to_representation(self, instance):
        representation = {
            'id': instance.id,
            'first_name': instance.first_name,
            'last_name': instance.last_name,
            'mobile': instance.mobile,
            'email': instance.email,
        }
        return representation

class LoginSerializer(serializers.ModelSerializer):
    country = CountrySerializer()

    class Meta:
        model = CustomUser
        fields = ['id', 'email', 'first_name', 'last_name', 'mobile', 'country']

    def to_representation(self, instance):
        representation = super().to_representation(instance)
        # Check if the requesting user is a superuser
        request = self.context.get('request', None)
        if request and request.user.is_superuser:
            representation['is_superuser'] = instance.is_superuser
        return representation


class ForgotPasswordSerializer(serializers.Serializer):
    email = serializers.EmailField()

class ChangePasswordSerializer(serializers.Serializer):
    old_password = serializers.CharField(required=True)
    new_password = serializers.CharField(required=True)


class UserCuisineSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserCuisine
        fields = ['id', 'name', 'cuisine', 'user', 'token']
        read_only_fields = ['cuisine', 'user', 'token']


class CuisineItemsSerializer(serializers.ModelSerializer):
    class Meta:
        model = CuisineItems
        fields = ['dish', 'user', 'cuisine']

class CompleteUserCuisineSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserCuisine
        fields = ['id', 'cuisine', 'name', 'is_completed', 'created_at', 'updated_at']
        read_only_fields = ['id', 'cuisine', 'name', 'created_at']  # Read-only fields

    def to_representation(self, instance):
        representation = super().to_representation(instance)
        # Encrypt the ID
        representation['id'] = encrypt_id(instance.id)
        return representation
    


# class DishesSerializer(serializers.ModelSerializer):
#     add_in_cuisine = serializers.SerializerMethodField()
#     image = serializers.SerializerMethodField()

#     class Meta:
#         model = Dishes
#         fields = ['id', 'name', 'is_active', 'created_at', 'meal_time', 'cuisine', 'created_by', 'add_in_cuisine', 'image']

#     def get_add_in_cuisine(self, obj):
#         customBasePermissions = CustomBasePermissions()
#         user = customBasePermissions.get_user(self.context['request'])
#         if user:
#             # Check for incomplete UserCuisine record
#             user_cuisine = UserCuisine.objects.filter(user=user, is_completed=False).first()
#             if user_cuisine:
#                 # Check if a matching CuisineItem exists
#                 cuisine_item = CuisineItems.objects.filter(user=user, cuisine=user_cuisine, dish=obj).exists()
#                 if cuisine_item:
#                     return True
#         return False
    
    def get_image(self, obj):
        # Get the first image for the dish
        dish_image = DishImages.objects.filter(dish=obj).first()
        if dish_image:
            return dish_image.image.url  # Assuming 'image' is a FileField/ImageField in DishImage model
        return None
    

class VisitorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Visitor
        fields = ['ip_address', 'user_agent', 'timestamp']


class MealTimesSerializer(serializers.ModelSerializer):
    class Meta:
        model = MealTimes
        fields = ['id', 'meal_name']

class CuisineSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cuisine
        fields = ['id', 'name']

class DishImagesSerializer(serializers.ModelSerializer):
    class Meta:
        model = DishImages
        fields = ['id', 'image']

class DishIngredientsSerializer(serializers.ModelSerializer):
    class Meta:
        model = DishIngedients
        fields = ['ingedients']

class DishRecipeSerializer(serializers.ModelSerializer):
    class Meta:
        model = DishRecipe
        fields = ['recipe']

class DishesSerializer(serializers.ModelSerializer):
    meal_time = MealTimesSerializer()
    cuisine = CuisineSerializer()
    ingedients_for_dish = DishIngredientsSerializer(read_only=True)
    recipe_for_dish = DishRecipeSerializer(read_only=True)  
    img_for_dish = DishImagesSerializer(many=True, read_only=True)  # Assuming related_name is 'dish_images'
    add_in_cuisine = serializers.SerializerMethodField()

    class Meta:
        model = Dishes
        fields = ['id', 'name', 'is_active', 'created_at', 'meal_time', 'cuisine', 'add_in_cuisine', 'ingedients_for_dish', 'recipe_for_dish', 'img_for_dish']

    def get_add_in_cuisine(self, obj):
        request = self.context.get('request')
        cuisine_id = self.context.get('pk', None)
        customBasePermissions = CustomBasePermissions()
        user = customBasePermissions.get_user(request)
        if user and user.is_authenticated:
            if cuisine_id is None:
                user_cuisine = UserCuisine.objects.filter(user=user, is_completed=False).first()
            else:
                user_cuisine = UserCuisine.objects.filter(pk=cuisine_id).first()
            if user_cuisine:
                return CuisineItems.objects.filter(user=user, cuisine=user_cuisine, dish=obj).exists()
        return False
    

class DishesSerializer2(serializers.ModelSerializer):
    meal_time = MealTimesSerializer()
    cuisine = CuisineSerializer()

    class Meta:
        model = Dishes
        fields = ['id', 'name', 'meal_time', 'cuisine']


class DishesSerializer3(serializers.ModelSerializer):
    class Meta:
        model = Dishes
        fields = ['id', 'name']


class CuisineItemsSerializer2(serializers.ModelSerializer):
    dish = DishesSerializer2()
    user = CustomUserIdNameEmailSerializer()

    class Meta:
        model = CuisineItems
        fields = ['id', 'dish', 'user']

class UserCuisineDetailsSerializer(serializers.ModelSerializer):
    belong_to_cuisine = CuisineItemsSerializer2(many=True, read_only=True)
    user = CustomUserIdNameEmailSerializer()
    class Meta:
        model = UserCuisine
        fields = ['id', 'cuisine', 'user', 'name', 'is_completed', 'created_at', 'updated_at', 'belong_to_cuisine', 'is_public']

    def to_representation(self, instance):
        representation = super().to_representation(instance)
        # Encrypt the ID
        representation['id'] = encrypt_id(instance.id)

        # Check if the request has user or not
        request = self.context.get('request', None)
        customBasePermissions = CustomBasePermissions()
        user = customBasePermissions.get_user(request)
        if user and user.is_authenticated:
            if user.id == instance.user.id:
                # owners call
                representation['same_user'] = True
            else:
                # other person calls
                representation['same_user'] = False
        return representation

class UserCuisineDetailsSerializer2(serializers.ModelSerializer):
    belong_to_cuisine = CuisineItemsSerializer2(many=True, read_only=True)
    user = CustomUserIdNameEmailSerializer()
    class Meta:
        model = UserCuisine
        fields = ['id', 'cuisine', 'user', 'name', 'is_completed', 'created_at', 'updated_at', 'belong_to_cuisine', 'is_public']

    def to_representation(self, instance):
        representation = super().to_representation(instance)
        # Encrypt the ID
        representation['id'] = encrypt_id(instance.id)
        representation['same_user'] = True
        return representation


class TokenTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = TokenType
        fields = ['type']  

class UserCuisineSerializer2(serializers.ModelSerializer):
    class Meta:
        model = UserCuisine
        fields = ['id', 'name', 'cuisine', 'is_completed', 'created_at', 'updated_at']

class UserTokenSerializer(serializers.ModelSerializer):
    token_type = TokenTypeSerializer()
    token_uses_ref = UserCuisineSerializer2(many=True, read_only=True)
    class Meta:
        model = UserToken
        fields = ['id', 'token_count', 'created_at', 'token_type', 'token_uses_ref']


class UserUpdateSerializer(serializers.ModelSerializer):
    country = serializers.PrimaryKeyRelatedField(queryset=Countries.objects.all(), required=False)

    class Meta:
        model = CustomUser
        fields = ['first_name', 'last_name', 'mobile', 'country']


class PaymentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Payment
        fields = ['id', 'amount', 'tokens', 'created_at', 'updated_at']


class MenuGroupUserRequestSerializer(serializers.ModelSerializer):
    class Meta:
        model= MenuGroupUserRequest
        fields= ['is_allowed']

    def validate_is_allowed(self, value):
        if not isinstance(value, bool):
            raise serializers.ValidationError("The is_allowed field must be a boolean value (true or false).")
        return value