from django.db import models
from django.contrib.auth.models import AbstractUser
from .managers import CustomUserManager
from django.utils.translation import gettext_lazy as _

class Countries(models.Model):
    code = models.CharField(max_length=2)
    name = models.CharField(max_length=255, unique=True)
    phone = models.CharField(max_length=15)
    symbol = models.CharField(max_length=10)
    capital = models.CharField(max_length=255)
    currency = models.CharField(max_length=3)
    continent = models.CharField(max_length=100)
    continent_code = models.CharField(max_length=2)
    alpha3 = models.CharField(max_length=3)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

# Create your models here.
class CustomUser(AbstractUser):
    username = None
    email = models.EmailField(_("email address"), unique=True)
    password = models.CharField(max_length=255)
    country = models.ForeignKey(Countries, on_delete=models.RESTRICT)
    mobile = models.CharField(max_length=15, unique=True)

    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = []

    objects = CustomUserManager()

    def __str__(self):
        return self.email
    

class TokenType(models.Model):
    type = models.CharField(max_length=50, unique=True)
    created_at = models.DateTimeField(auto_now_add=True)


class UserToken(models.Model):
    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE, related_name='tokens_for_user')
    token_count = models.IntegerField()
    token_type = models.ForeignKey(TokenType, on_delete=models.CASCADE, related_name='token_type_for_user')
    is_used = models.BooleanField(default=0)
    used_token_count = models.IntegerField(default=0)
    created_at = models.DateTimeField(auto_now_add=True)


class UserCuisine(models.Model):
    cuisine = models.CharField(max_length=60, unique=True)
    name = models.CharField(max_length=500)
    user = models.ForeignKey(CustomUser, on_delete=models.RESTRICT, related_name='user_cuisine')
    is_completed = models.BooleanField(default=0)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(null=True, blank=True)

class TokenUsage(models.Model):
    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE, related_name='token_user')
    token = models.ForeignKey(UserToken, on_delete=models.CASCADE, related_name='token_uses_from')
    cuisine = models.ForeignKey(UserCuisine, on_delete=models.CASCADE, related_name='token_used_by')
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        unique_together = ('user', 'cuisine')


class MealTimes(models.Model):
    meal_name = models.CharField(max_length=100, unique=True)
    quote = models.CharField(max_length=1000, unique=True)
    description = models.CharField(max_length=1000, unique=True)
    created_at = models.DateTimeField(auto_now_add=True)


class Cuisine(models.Model):
    name = models.CharField(max_length=255, unique=True)
    country = models.ForeignKey(Countries, on_delete=models.RESTRICT, related_name='cuisine_country')
    created_at = models.DateTimeField(auto_now_add=True)
    created_by = models.ForeignKey(CustomUser, on_delete=models.RESTRICT, related_name='cuisine_added_by')

class Dishes(models.Model):
    name = models.CharField(max_length=255)
    meal_time = models.ForeignKey(MealTimes, on_delete=models.RESTRICT, related_name='dish_meal_time')
    cuisine = models.ForeignKey(Cuisine, on_delete=models.RESTRICT, related_name='cuisine')
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    created_by = models.ForeignKey(CustomUser, on_delete=models.RESTRICT, related_name='dish_added_by')

    
class CuisineItems(models.Model):
    user = models.ForeignKey(CustomUser, on_delete=models.RESTRICT, related_name='cuisine_items_for_user')
    cuisine = models.ForeignKey(UserCuisine, on_delete=models.RESTRICT, related_name='belong_to_cuisine')
    dish = models.ForeignKey(Dishes, on_delete=models.RESTRICT, related_name='for_dish')
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        unique_together = ('user', 'cuisine', 'dish')


class DishImages(models.Model):
    dish = models.ForeignKey(Dishes, on_delete=models.RESTRICT, related_name='img_for_dish')
    image = models.ImageField(upload_to='dish_images')
    alt = models.CharField(max_length=255)
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    created_by = models.ForeignKey(CustomUser, on_delete=models.RESTRICT, related_name='dish_img_add_by')


class DishIngedients(models.Model):
    dish = models.OneToOneField(Dishes, on_delete=models.RESTRICT, related_name='ingedients_for_dish')
    ingedients = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    created_by = models.ForeignKey(CustomUser, on_delete=models.RESTRICT, related_name='ingedients_add_by')
    updated_at = models.DateTimeField(null=True, blank=True)
    updated_by = models.ForeignKey(CustomUser, on_delete=models.RESTRICT, related_name='ingedients_update_by', null=True, blank=True)


class DishRecipe(models.Model):
    dish = models.OneToOneField(Dishes, on_delete=models.RESTRICT, related_name='recipe_for_dish')
    recipe = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    created_by = models.ForeignKey(CustomUser, on_delete=models.RESTRICT, related_name='recipe_add_by')
    updated_at = models.DateTimeField(null=True, blank=True)
    updated_by = models.ForeignKey(CustomUser, on_delete=models.RESTRICT, related_name='recipe_update_by', null=True, blank=True)


class ResetPasswordToken(models.Model):
    user = models.ForeignKey(CustomUser, on_delete=models.RESTRICT, related_name='reset_token_for_user')
    token = models.CharField(max_length=1000)
    is_reset = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(null=True, blank=True)