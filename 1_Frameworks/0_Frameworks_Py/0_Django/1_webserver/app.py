# command
# django-admin.py runserver --pythonpath=. --settings=app

from django.conf.urls import url
from django.http import HttpResponse


SECRET_KEY = 'app'
DEBUG = True
ROOT_URLCONF = __name__


def app(request):
    return HttpResponse('<p style="text-align: center;">Hello Server on django</p>')


urlpatterns = [
    url(r'^$', app)
]
