# -*- coding:utf-8 -*-

from django.views.generic import TemplateView
from django.views.generic.base import RedirectView
from django.conf.urls.defaults import patterns, include, url
from django.shortcuts import render

urlpatterns = patterns('',
    # Home
    url(r'^$', 'gestao.website.views.home'),
    url(r'^(?P<pneu>[a-z0-9A-Z_-]+)$', 'gestao.website.views.home'),
)