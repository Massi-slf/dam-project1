# serializers.py in your app directory

from rest_framework import serializers
from .models import City,CityImage



class CityImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = CityImage
        fields = ['city', 'image', 'updated_at']

class CitySerializer(serializers.ModelSerializer):
    images = CityImageSerializer(many=True, read_only=True)
    class Meta:
        model = City
        fields = ['name', 'description', 'location', 'rating', 'featured', 'created_at', 'updated_at',"images"]