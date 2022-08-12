from tabnanny import verbose
from django.db import models

# Create your models here.


class TestModel(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    age = models.PositiveIntegerField(blank=True, null=True)
    address = models.CharField(max_length=255, blank=True, null=True)
    
    class Meta:
        verbose_name = "test_models"