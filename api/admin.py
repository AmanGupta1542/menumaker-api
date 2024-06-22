from django.contrib import admin

from .models import *

# Register your models here.

@admin.register(CustomUser)
class CustomUserAdmin(admin.ModelAdmin):
    list_display = ['id', 'first_name', "last_name", 'email', 'password', 'is_staff', 'is_superuser', 'is_active']


@admin.register(ResetPasswordToken)
class ResetPasswordTokenAdmin(admin.ModelAdmin):
    list_display = ['id', 'user', 'token', 'is_reset', 'created_at', 'updated_at']


@admin.register(Countries)
class CountriesAdmin(admin.ModelAdmin):
    list_display = ['id', 'code', 'name', 'phone', 'symbol', 'capital', 'currency', 'continent', 'continent_code', 'alpha3', 'created_at']

@admin.register(TokenType)
class TokenTypeAdmin(admin.ModelAdmin):
    list_display = ['id', 'type', 'created_at']


@admin.register(UserToken)
class UserTokenAdmin(admin.ModelAdmin):
    list_display = ['id', 'user', 'token_count', 'token_type', 'is_used', 'used_token_count', 'created_at']


@admin.register(UserCuisine)
class UserCuisineAdmin(admin.ModelAdmin):
    list_display = ['id', 'cuisine', 'name', 'user', 'is_completed',  'created_at', 'updated_at']

@admin.register(TokenUsage)
class TokenUsageAdmin(admin.ModelAdmin):
    list_display = ['id', 'user', 'token', 'cuisine', 'created_at']

@admin.register(MealTimes)
class MealTimesAdmin(admin.ModelAdmin):
    list_display = ['id', 'meal_name', 'quote', 'description', 'created_at']

@admin.register(Dishes)
class DishesAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'meal_time', 'cuisine', 'is_active', 'created_at', 'created_by']


@admin.register(Cuisine)
class CuisineAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'country', 'created_at', 'created_by']


@admin.register(CuisineItems)
class CuisineItemsAdmin(admin.ModelAdmin):
    list_display = ['id', 'user', 'cuisine', 'dish', 'created_at']

@admin.register(DishImages)
class DishImagesAdmin(admin.ModelAdmin):
    list_display = ['id', 'dish', 'image', 'alt', 'is_active', 'created_at', 'created_by']


@admin.register(DishIngedients)
class DishIngedientsAdmin(admin.ModelAdmin):
    list_display = ['id', 'dish', 'ingedients', 'created_at', 'created_by', 'updated_at', 'updated_by']


@admin.register(DishRecipe)
class DishRecipeAdmin(admin.ModelAdmin):
    list_display = ['id', 'dish', 'recipe', 'created_at', 'created_by', 'updated_at', 'updated_by']