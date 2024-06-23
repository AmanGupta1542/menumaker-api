from django.urls import path, include
from .views import *
from rest_framework.routers import DefaultRouter

router = DefaultRouter()

# if you want / at the end of url path then add APPEND_SLASH = False in settings.py
urlpatterns = [
    path('register/', RegisterAPIView.as_view(), name='register'),
    path('login', LoginAPIView.as_view(), name='login'),
    path('user', UserAPIView.as_view(), name='user'),
    path('refresh', RefreshAPIView.as_view(), name='refresh'),
    path('logout', LogoutAPIView.as_view(), name='logout'),
    path('', include(router.urls)),
    path('forgot-password/', ForgotPasswordView.as_view(), name='forgot-password'),
    path('reset-password/', reset_password, name='reset-password'),
    path('check-reset-token/<str:token>', check_reset_token, name='check-reset-token'),
    path('change-password/', ChangePasswordAPIView.as_view(), name='change-password'),
    path('users/', AllUsersListAPIView.as_view(), name='users'),
    path('create-cuisine/', create_cuisine, name='create-cuisine'),
    path('edit-cuisine-name/<int:id>/', edit_cuisine_name, name='edit_cuisine_name'),
    path('add-dish/', add_dish, name='add-dish'),
    path('user-cuisine/<int:pk>/', user_cuisine_detail, name='user-cuisine-detail'),
    path('user-cuisine/', user_cuisine_detail, name='user-cuisine-detail-none'),
    path('user-cuisine-list/', UserCuisineListAPIView.as_view(), name='user-cuisine-list'),
    path('dishes/', DishesListAPIView.as_view(), name='dishes-list'),
    path('cuisine-items/', CuisineItemsListAPIView.as_view(), name='cuisine-items-list'),
    path('delete-cuisine-item/<int:dish_id>/', DeleteCuisineItemAPIView.as_view(), name='delete-cuisine-item'),
]
