from django.urls import path
from . import views

urlpatterns = [
    path("",views.UserCreationView.as_view()),
    path("profile/",views.UserProfileView.as_view())
]
