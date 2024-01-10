from django.db import models
from cities.models import City
from django.contrib.auth import get_user_model

User =  get_user_model()
# Create your models here.

class Hotel(models.Model):
    name = models.CharField(max_length=100)
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    location = models.CharField(max_length=100)
    city = models.ForeignKey(City,on_delete=models.CASCADE)
    rating = models.DecimalField(decimal_places=1,max_digits=5)
    price = models.DecimalField(decimal_places=2,max_digits=5)
    top = models.BooleanField(default=False)

    def __str__(self):
        return self.name

def hotel_image_handler(instance,filename):
    return "hotels/"+instance.hotel.name+"/"+filename

class HotelImage(models.Model):
    image = models.ImageField(upload_to=hotel_image_handler)
    hotel = models.ForeignKey(Hotel,on_delete=models.CASCADE,related_name="images")
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
