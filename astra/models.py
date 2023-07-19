from django.db import models
from filer.fields.image import FilerImageField
from filer.fields.file import FilerFileField


class Menu(models.Model):
    title = models.CharField(max_length=20, blank=False)
    link = models.CharField(max_length=256, blank=False)
    order = models.PositiveIntegerField(default=0, blank=False, null=False)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name_plural = 'Меню'
        verbose_name = 'меню'
        ordering = ['order']


class Plus(models.Model):
    icon = FilerImageField(null=True, blank=True, on_delete=models.CASCADE,
                           related_name="icon")
    text = models.CharField(max_length=256, blank=False)
    order = models.PositiveIntegerField(default=0, blank=False, null=False)

    class Meta:
        verbose_name_plural = 'Приемущества'
        verbose_name = 'приемущество'
        ordering = ['order']