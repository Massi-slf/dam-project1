
from rest_framework import generics
from .models import Hotel
from .serializers import HotelSerializer

class CitiesView(generics.ListAPIView):
    queryset = Hotel.objects.all()
    serializer_class = HotelSerializer
    def get_queryset(self):
        q = self.request.GET.get("q",None)
        if q :
            return Hotel.objects.filter(name__icontains=q)
        return Hotel.objects.all()

