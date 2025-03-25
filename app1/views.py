from django.shortcuts import render

def homepage(request):
    return render(request, 'app1/home.html')

def sample_page(request):
    return render(request, 'app1/sample.html')
