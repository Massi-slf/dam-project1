from rest_framework import generics
from .models import City
from .serializers import CitySerializer

class CitiesView(generics.ListAPIView):
    queryset = City.objects.all()
    serializer_class = CitySerializer
    def get_queryset(self):
        q = self.request.GET.get("q",None)
        if q :
            return City.objects.filter(name__icontains=q)
        return City.objects.all()

