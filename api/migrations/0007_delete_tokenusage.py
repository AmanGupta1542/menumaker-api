# Generated by Django 5.0.2 on 2024-06-22 22:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0006_usercuisine_token'),
    ]

    operations = [
        migrations.DeleteModel(
            name='TokenUsage',
        ),
    ]
