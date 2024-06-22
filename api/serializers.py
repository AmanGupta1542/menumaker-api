
from rest_framework import serializers
from .models import *

class CustomUserIdNameEmailSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser
        fields = ['id', 'first_name', 'last_name', 'email']

class CountrySerializer(serializers.ModelSerializer):
    class Meta:
        model = Countries
        fields = ['id', 'name']

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
    class Meta:
        model = CustomUser
        fields = ['id', 'email', 'first_name', 'last_name', 'mobile', 'country', 'is_superuser']
    
class LoginUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser
        fields = ['id', 'email', 'first_name', 'last_name', 'mobile', 'country', 'is_superuser']


class ForgotPasswordSerializer(serializers.Serializer):
    email = serializers.EmailField()

class ChangePasswordSerializer(serializers.Serializer):
    old_password = serializers.CharField(required=True)
    new_password = serializers.CharField(required=True)
