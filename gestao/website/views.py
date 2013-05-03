# -*- coding:utf-8 -*-

import logging, calendar, datetime

from django.template import RequestContext
from django.shortcuts import render_to_response
from gestao.modules.pneu.models import Pneu

def home(request, pneu=False):
	"""
	"""
	pneus = Pneu.objects.all().values()
	print pneu
	TEMPLATE_RES = {'pneus':pneus}
	return render_to_response(
        'home.tpl',
        TEMPLATE_RES,
        context_instance = RequestContext(request)
    )

def projeto(request):
	"""
	"""
	TEMPLATE_RES = {'pneus':pneus}
	return render_to_response(
        'home.tpl',
        TEMPLATE_RES,
        context_instance = RequestContext(request)
    )