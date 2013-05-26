# -*- encoding: utf-8 -*-
################################################################################
# Administração do módulo Equipamentos
#
# @author: Victor Britto e Barros
# @since: 25/04/2013
################################################################################
import datetime
from django.contrib import admin
from django.contrib.admin.options import ModelAdmin
from gestao.modules.equipamento.models import MarcaEquipamento, Tracao, ModeloEquipamento, Familia, Equipamento


class MarcaEquipamentoAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Marca'

    search_fields = ('nome',)
    ordering = ['nome',]  # menos antes do numero para order by desc
    list_display = ('nome',)
    #list_filter = ('', )
    #raw_id_fields = ('id_marca_equipamento',) 


class TracaoAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Tração'

    search_fields = ('descricao',)
    ordering = ['descricao']  # menos antes do numero para order by desc
    list_display = ('id_tracao','descricao',)
    #list_filter = ('', )
    #raw_id_fields = ('id_tracao', )

class ModeloEquipamentoAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Modelo do Equipamento'

    search_fields = ('nome','id_marca_equipamento','id_tracao',)
    ordering = ['nome','id_marca_equipamento']  # menos antes do numero para order by desc
    list_display = ('id_marca_equipamento','nome','id_tracao',)
    list_filter = ('id_marca_equipamento','id_tracao', )
    raw_id_fields = ('id_marca_equipamento','id_tracao', )

class FamiliaAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Familia'

    search_fields = ('num_familia','descricao',)
    ordering = ['num_familia','descricao',]  # menos antes do numero para order by desc
    list_display = ('id_familia','num_familia','descricao', )
    #list_filter = ('num_familia', )
    #raw_id_fields = ('id_familia', )

class EquipamentoAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Equipamento'

    search_fields = ('num_equipamento','placa',)
    ordering = ['num_equipamento','id_modelo_equipamento','id_familia']  # menos antes do numero para order by desc
    list_display = ('num_equipamento','placa','id_modelo_equipamento',)
    list_filter = ('id_modelo_equipamento','id_familia',)
    raw_id_fields = ('id_familia','id_modelo_equipamento', )


admin.site.register(MarcaEquipamento, MarcaEquipamentoAdmin)
admin.site.register(Tracao, TracaoAdmin)
admin.site.register(ModeloEquipamento, ModeloEquipamentoAdmin)
admin.site.register(Familia, FamiliaAdmin)
admin.site.register(Equipamento, EquipamentoAdmin)

#{} dicionario
#[] lista 
#() tupla

