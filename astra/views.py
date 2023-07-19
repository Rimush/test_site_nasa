from django.shortcuts import render
from .models import Menu, Plus


def get_menu():
    return Menu.objects.all().order_by('order')


def get_plus():
    return Plus.objects.all().order_by('order')[:4]


def index(request):
    context = {}
    context['menu'] = get_menu()
    context['plus'] = get_plus()

    return render(request, 'page-index.html', context)
