from django.db import models
from filer.fields.image import FilerImageField
from core.singleton import SingletonModel
from filer.models.filemodels import File
from filer import settings as filer_settings


class Menu(models.Model):
    title = models.CharField(verbose_name='Текст', max_length=20, blank=False)
    link = models.CharField(verbose_name='Ссылка', max_length=256, blank=False)
    order = models.PositiveIntegerField(default=0, blank=False, null=False)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name_plural = 'Меню'
        verbose_name = 'меню'
        ordering = ['order']


class Plus(models.Model):
    image = FilerImageField(verbose_name='Изображение', null=True, blank=True, on_delete=models.CASCADE, related_name="pimage")
    text = models.CharField(verbose_name='Текст', max_length=256, blank=False)
    order = models.PositiveIntegerField(default=0, blank=False, null=False)

    class Meta:
        verbose_name_plural = 'Приемущества'
        verbose_name = 'приемущество'
        ordering = ['order']


class Slider(models.Model):
    image = FilerImageField(verbose_name='Изображение', null=True, blank=True, on_delete=models.CASCADE, related_name="simage")
    alt = models.CharField(verbose_name='Описание', max_length=256, blank=False)
    order = models.PositiveIntegerField(default=0, blank=False, null=False)

    class Meta:
        verbose_name_plural = 'Слайдер'
        verbose_name = 'изображение'
        ordering = ['order']


class Config(SingletonModel):
    header = models.CharField(verbose_name='Заголовок', max_length=64)
    description = models.TextField(verbose_name='Описание')

    def __str__(self):
        return 'Настроить'

    class Meta:
        verbose_name_plural = 'Параметры сайта'
        verbose_name = 'Параметры сайта'