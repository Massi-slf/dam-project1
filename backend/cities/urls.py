from django.urls import path
from . import views
urlpatterns = [
    path("",views.CitiesView.as_view())
]
