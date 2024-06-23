
from django_filters import rest_framework as filters
from .models import Dishes

class DishesFilter(filters.FilterSet):
    name = filters.CharFilter(field_name='name', lookup_expr='icontains')
    meal_time = filters.CharFilter(field_name='meal_time__meal_name', lookup_expr='icontains')
    cuisine = filters.CharFilter(field_name='cuisine__name', lookup_expr='icontains')

    class Meta:
        model = Dishes
        fields = ['name', 'meal_time', 'cuisine']