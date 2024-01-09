from django.shortcuts import render
from rest_framework.generics import RetrieveAPIView

# Create your views here.



class UserProfile(RetrieveAPIView):
    def get_object(self):
        return self.request.user