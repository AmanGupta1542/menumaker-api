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
    path('edit-cuisine-name/', edit_cuisine_name, name='edit_cuisine_name'),
    path('add-dish/', add_dish, name='add-dish'),
    path('user-cuisine/<int:pk>/', user_cuisine_detail, name='user-cuisine-detail'),
    path('user-cuisine/', user_cuisine_detail, name='user-cuisine-detail-none'),
    path('user-cuisine-list/', UserCuisineListAPIView.as_view(), name='user-cuisine-list'),
    path('mark-cuisine-complete/', mark_cuisine_complete, name='mark-cuisine-complete'),
    path('dishes/', DishesListAPIView.as_view(), name='dishes-list'),
    path('cuisine-items/', CuisineItemsListAPIView.as_view(), name='cuisine-items-list'),
    path('delete-cuisine-item/<int:dish_id>/', DeleteCuisineItemAPIView.as_view(), name='delete-cuisine-item'),
    path('visitor/', VisitorCreateAPIView.as_view(), name='visitor-create'),
    path('dish-details/<int:pk>/', DishDetailView.as_view(), name='dish-details'),
    path('countries/', CountryListView.as_view(), name='countries'),
    path('get-total-tokens/', get_sum_of_tokens, name='get-total-tokens'),
    path('get-tokens-history/', get_user_tokens, name='get-tokens-history'),
    path('google-login-data/', google_login, name='google-login-data'),
    path('create-order/', create_order, name='create-order'),
    path('payment-callback/', payment_callback, name='payment-callback'),
    path('payment-dismissed/', payment_dismissed, name='payment-dismissed'),
    path('check-email/', check_email, name='check-email'),
    path('check-mobile/', check_mobile, name='check-mobile'),
    path('update-user/', update_user, name='update-user'),
    path('successful-payments/', get_successful_payments, name='successful-payments'),
]
