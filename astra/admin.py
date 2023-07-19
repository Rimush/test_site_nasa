from django.contrib import admin
from .models import Menu, Plus, Slider, Config
from adminsortable2.admin import SortableAdminMixin
from django.db.utils import ProgrammingError
from django.utils.safestring import mark_safe
from easy_thumbnails.files import get_thumbnailer


@admin.register(Menu)
class MenuAdmin(SortableAdminMixin, admin.ModelAdmin):
    list_display = ['title', 'order']
    ordering = ['order']


@admin.register(Plus)
class PlusAdmin(SortableAdminMixin, admin.ModelAdmin):

    def get_thumb(self, object):
        if object.image:
            options = {'size': (50, 50), 'crop': True}
            thumb_url = get_thumbnailer(object.image).get_thumbnail(options).url
            return mark_safe(f"<img src='{thumb_url}'>")

    get_thumb.short_description = "Миниатюра"
    list_display = ['get_thumb', 'text', 'order']
    ordering = ['order']


@admin.register(Slider)
class SliderAdmin(SortableAdminMixin, admin.ModelAdmin):

    def get_thumb(self, object):
        if object.image:
            options = {'size': (0, 50), 'crop': True}
            thumb_url = get_thumbnailer(object.image).get_thumbnail(options).url
            return mark_safe(f"<img src='{thumb_url}'>")

    get_thumb.short_description = "Миниатюра"
    list_display = ['get_thumb', 'alt', 'order']
    ordering = ['order']


@admin.register(Config)
class ConfigAdmin(admin.ModelAdmin):
    def __init__(self, model, admin_site):
        super().__init__(model, admin_site)
        try:
            Config.load().save()
        except ProgrammingError:
            pass

    def has_add_permission(self, request, obj=None):
        return False

    def has_delete_permission(self, request, obj=None):
        return False
