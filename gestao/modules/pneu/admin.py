# -*- encoding: utf-8 -*-
################################################################################
# Administração do módulo Pneu
#
# @author: Victor Britto e Barros
# @since: 25/04/2013
################################################################################
import datetime
from django.contrib import admin
from django.contrib.admin.options import ModelAdmin
from gestao.modules.localidade.models import Estado, Cidade
from gestao.modules.filial.models import Filial
from gestao.modules.pneu.models import MarcaPneu, Medida, ModeloPneu, Pneu, Medicao, Descarte, Reforma

class MarcaPneuAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Marca do Pneu'

    search_fields = ('nome',)
    ordering = ['nome',]  # menos antes do numero para order by desc
    list_display = ('id_marca_pneu','nome',)
    #list_filter = ('id_marca_equipamento','id_tracao', )
    #raw_id_fields = ('id_marca_equipamento','id_tracao' )

class MedidaAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Medida'

    search_fields = ('medida',)
    ordering = ['medida',]  # menos antes do numero para order by desc
    list_display = ('id_medida','medida',)
    #list_filter = ('id_marca_equipamento','id_tracao', )
    #raw_id_fields = ('id_marca_equipamento','id_tracao' )

class ModeloPneuAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Modelo do Pneu'

    search_fields = ('nome','id_marca_pneu',)
    ordering = ['nome','id_marca_pneu',]  # menos antes do numero para order by desc
    list_display = ('id_marca_pneu','nome','id_medida','profundidade',)
    list_filter = ('id_marca_pneu','id_medida', )
    raw_id_fields = ('id_marca_pneu', 'id_medida' )

class PneuAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Pneu'

    search_fields = ('num_fogo',)
    ordering = ['num_fogo','id_filial','situacao']  # menos antes do numero para order by desc
    list_display = ('id_pneu','num_fogo','situacao','id_filial','id_modelo_pneu','data_cadastro',)
    list_filter = ('id_modelo_pneu__id_marca_pneu','situacao','id_filial', )
    raw_id_fields = ('id_filial', 'id_modelo_pneu' )

class MedicaoAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Medição'

    search_fields = ('id_pneu',)
    ordering = ['-data_medicao','id_pneu']  # menos antes do numero para order by desc
    list_display = ('id_pneu','profundidade','horimetro','data_medicao',)
    list_filter = ('id_pneu',)
    raw_id_fields = ('id_pneu',) 

class DescarteAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Descarte'

    search_fields = ('id_pneu',)
    ordering = ['-data_descarte','id_pneu']  # menos antes do numero para order by desc
    list_display = ('id_pneu','data_descarte',)
    #list_filter = ('id_pneu',)
    raw_id_fields = ('id_pneu',)

class ReformaAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Reforma'

    search_fields = ('id_pneu',)
    ordering = ['id_pneu']  # menos antes do numero para order by desc
    list_display = ('id_pneu','data_saida','data_retorno',)
    list_filter = ('id_pneu',)
    raw_id_fields = ('id_pneu','id_cidade',)

admin.site.register(MarcaPneu, MarcaPneuAdmin)
admin.site.register(Medida, MedidaAdmin)
admin.site.register(ModeloPneu, ModeloPneuAdmin)
admin.site.register(Pneu, PneuAdmin)
admin.site.register(Medicao, MedicaoAdmin)
admin.site.register(Descarte, DescarteAdmin)
admin.site.register(Reforma, ReformaAdmin)
