from django.contrib import admin
from .models import City,CityImage



class CityImageInline(admin.TabularInline):
    model = CityImage

class CityAdmin(admin.ModelAdmin):
    inlines = [CityImageInline]
    list_display = ['name',"location","featured","rating","created_at","updated_at"]
    list_filter = ["featured","created_at"]

admin.site.register(City, CityAdmin)
admin.site.register(CityImage)
