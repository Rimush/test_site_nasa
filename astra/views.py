from django.shortcuts import render
from .models import Menu, Plus, Slider, Config


def get_menu():
    return Menu.objects.all().order_by('order')


def get_plus():
    return Plus.objects.all().order_by('order')[:4]


def get_slider():
    return Slider.objects.all().order_by('order')


def get_config():
    return Config.objects.all().values()[0]


def index(request):

    context = {
        'menu': get_menu(),
        'plus': get_plus(),
        'slider': get_slider(),
        'config': get_config(),
    }

    return render(request, 'page-index--entry.html', context)
