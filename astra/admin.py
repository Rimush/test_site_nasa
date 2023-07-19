from django.contrib import admin
from .models import Menu
from .models import Plus
from adminsortable2.admin import SortableAdminMixin


@admin.register(Menu)
class MenuAdmin(SortableAdminMixin, admin.ModelAdmin):
    list_display = ['title', 'order']
    ordering = ['order']


@admin.register(Plus)
class PlusAdmin(SortableAdminMixin, admin.ModelAdmin):
    list_display = ['icon', 'text', 'order']
    ordering = ['order']
