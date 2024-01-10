from rest_framework import serializers
from django.contrib.auth import get_user_model
from cities.models import City
from .models import Hotel, HotelImage

User = get_user_model()


class HotelImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = HotelImage
        fields = ['id', 'image', 'created_at', 'updated_at']

class HotelSerializer(serializers.ModelSerializer):
    images = HotelImageSerializer(many=True, read_only=True)
    class Meta:
        model = Hotel
        fields = ['id', 'name',  'location', 'city', 'rating', 'top', 'images']