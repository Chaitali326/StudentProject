from django.urls import path
from .views import app2_page

urlpatterns = [
    path('', app2_page, name='app2_page'),
]
