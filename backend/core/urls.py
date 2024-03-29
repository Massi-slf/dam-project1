from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import include, path
urlpatterns = [
    path('admin/', admin.site.urls),
    path("api/v1/accounts/",include("accounts.urls")),
    path("api/v1/auth/",include("authentication.urls")),
    path("api/v1/cities/",include("cities.urls")),
    path("api/v1/hotels/",include("hotels.urls")),
]


if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)