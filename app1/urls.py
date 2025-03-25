from django.urls import path
from .views import homepage, sample_page

urlpatterns = [
    path('', homepage, name='homepage'),
    path('sample/', sample_page, name='sample_page'),
]
