from django.db import models
from django.contrib.auth import get_user_model
User = get_user_model()

# Create your models here.
class City(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    name  = models.CharField(max_length=300)
    description = models.TextField()
    location = models.CharField(max_length=300)
    rating = models.DecimalField(decimal_places=1,max_digits=5)
    featured = models.BooleanField(default=False)
    created_at  = models.DateTimeField(auto_now_add=True)
    updated_at  = models.DateTimeField(auto_now=True)
    def __str__(self):
        return self.name
def city_image_handler(instance,filename):
    return "cities/"+instance.city.name+"/"+filename
class CityImage(models.Model):
    city = models.ForeignKey(City,related_name="images",on_delete=models.CASCADE)
    image = models.ImageField(upload_to=city_image_handler)
    updated_at  = models.DateTimeField(auto_now_add=True)
