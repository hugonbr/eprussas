# command
# django-admin.py runserver --pythonpath=. --settings=ola

from django.conf.urls import url
from django.http import HttpResponse


SECRET_KEY = 'ola'
DEBUG = True
ROOT_URLCONF = __name__


def ola(request):
    return HttpResponse('<p style="text-align: center;">Hello Server</p>')


urlpatterns = [
    url(r'^$', ola)
]
