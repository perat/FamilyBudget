from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", include("familyBudget.apps.public.urls")),
    path("", include("familyBudget.apps.accounts.urls")),
]
