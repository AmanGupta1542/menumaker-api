from django.conf import settings
from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import CustomUser, UserToken, TokenType

@receiver(post_save, sender=CustomUser)
def assign_free_tokens(sender, instance, created, **kwargs):
    if created:
        # Assuming that TokenType with id=1 is for free tokens
        token_type = TokenType.objects.get(id=1)
        UserToken.objects.create(
            user=instance,
            token_count=settings.DEFAULT_FREE_TOKEN,
            token_type=token_type,
            is_used=False,
            used_token_count=0
        )
