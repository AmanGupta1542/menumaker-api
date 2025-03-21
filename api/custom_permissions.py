from rest_framework.permissions import BasePermission
from rest_framework.authentication import   get_authorization_header
import logging
from django.db.models import Q

from .authentication import decode_access_token
from .models import CustomUser

logger = logging.getLogger("api.custom_permissions")

class CustomBasePermissions(BasePermission):
    def get_user(self, request, *args, **kwargs):
        try:
            auth = get_authorization_header(request).split()
            # print('auth',auth)
            if auth and len(auth) == 2:
                token = auth[1].decode('utf-8')
                # print('token',token)
                user_id = decode_access_token(token)
                # print(user_id)

                user = CustomUser.objects.filter(pk=user_id).first()
                if not user:
                    return False
                if not user.is_active:
                    return False
                return user
            return False
        except Exception as e:
            logger.exception(f"Getting error while checking permission. Error : {e}")

class CheckAdminPermission(CustomBasePermissions):
    def has_permission(self, request, view):
        user = self.get_user(request)
        if user and user.is_superuser:
            request.user = user
            return True
        return False
    

class CheckStaffPermission(CustomBasePermissions):
    def has_permission(self, request, view):
        user = self.get_user(request)
        if user and user.is_staff:
            request.user = user
            return True
        return False
    

class CheckActiveUserPermission(CustomBasePermissions):
    def has_permission(self, request, view):
        user = self.get_user(request)
        if user:
            request.user = user
            return True
        return False
    
class CheckActiveUserPermission2(CustomBasePermissions):
    def has_permission(self, request, view):
        user = self.get_user(request)
        if user:
            request.user = user
        else:
            request.user = None
        return True
    
