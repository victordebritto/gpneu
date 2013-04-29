# -*- encoding: utf-8 -*-
################################################################################
# Administração do módulo Localidade
#
# @author: Victor Britto e Barros
# @since: 25/04/2013
################################################################################
import datetime
from django.contrib import admin
from django.contrib.admin.options import ModelAdmin
from gestao.modules.localidade.models import Estado, Cidade

class EstadoAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Estado'


    ordering = ['uf']  # menos antes do numero para order by desc
    list_display = ('nome', 'uf',)

class CidadeAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Cidade'


    ordering = ['nome']  # menos antes do numero para order by desc
    list_display = ('nome', 'id_estado',)
    raw_id_fields = ('id_estado', )

admin.site.register(Estado, EstadoAdmin)
admin.site.register(Cidade, CidadeAdmin)
#{} dicionario
#[] lista 
#() tupla

