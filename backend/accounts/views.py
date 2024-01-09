from django.shortcuts import render
from .serializers import AccountDeletionSerializer,UserProfileSerializer,UserCreationSerializer
from rest_framework.generics import RetrieveAPIView,CreateAPIView
from rest_framework.permissions import IsAuthenticated

# Create your views here.


class UserProfileView(RetrieveAPIView):
    serializer_class = UserProfileSerializer
    permission_classes = [IsAuthenticated]
    def get_object(self):
        return self.request.user
class UserCreationView(CreateAPIView):
    serializer_class = UserCreationSerializer
    