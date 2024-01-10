from django.contrib import admin
from .models import Hotel,HotelImage
# Register your models here.



class HotelImageInline(admin.TabularInline):
    model = HotelImage
class HotelAdmin(admin.ModelAdmin):
    inlines = [HotelImageInline]
    list_display = ['name','location','city','rating','top']


admin.site.register(Hotel,HotelAdmin)
admin.site.register(HotelImage)

