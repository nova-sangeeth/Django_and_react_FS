from django.shortcuts import render

# Create your views here.
from authentication.models import TestModel


def index(request):
    testQuerySet = TestModel.objects.all().values()
    return testQuerySet
