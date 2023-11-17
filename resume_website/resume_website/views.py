from django.shortcuts import render
from django.template.loader import get_template

def welcome(request):
    context = {} # {"title": "Welcome to my Resumé Website!"}
    return render(request, "index.html", context)


def culture(request):
    context = {}# {"title": "Culture and Environment"}
    return render(request, "culture-practices-and-environment.html", context)


def development(request):
    context = {} #{"title2": "I am Passionate about Software Development and Development Practices!"}
    return render(request, "passion-for-development.html", context)


def devsecops(request):
    context = {} #{"title": "Welcome to my Resumé Website!"}
    return render(request, "devsecops-accomplishments.html", context)


def community(request):
    context = {} #{"title": "Welcome to my Resumé Website!"}
    return render(request, "involvement-causes-and-community.html", context)


def portfolio(request):
    context = {} # {"title": "Welcome to my Resumé Website!"}
    return render(request, "my-portfolio.html", context)


def contact(request):
    context = {"title": "Welcome to my Resumé Website!"}
    return render(request, "contact-me.html", context)


