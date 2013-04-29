# -*- encoding: utf-8 -*-
################################################################################
# Administração do módulo Filial
#
# @author: Victor Britto e Barros
# @since: 25/04/2013
################################################################################
import datetime
from django.contrib import admin
from django.contrib.admin.options import ModelAdmin
from gestao.modules.filial.models import Filial
from gestao.modules.localidade.models import Estado, Cidade

class FilialAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Filial'

    search_fields = ('id_cidade__id_estado__uf', 'nome', 'numero', 'cnpj',)
    ordering = ['numero']  # menos antes do numero para order by desc
    list_display = ('numero','nome', 'id_cidade', 'cnpj','status',)
    list_filter = ('status', )
    raw_id_fields = ('id_cidade', )

    
admin.site.register(Filial, FilialAdmin)
#{} dicionario
#[] lista 
#() tupla

