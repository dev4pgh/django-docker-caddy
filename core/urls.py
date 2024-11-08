from django.contrib import admin
from django.urls import path

from .views import AboutView, IndexView

urlpatterns = [
    path("admin/", admin.site.urls),
    path("about/", AboutView.as_view(), name="about"),
    path("", IndexView.as_view(), name="index"),
]
