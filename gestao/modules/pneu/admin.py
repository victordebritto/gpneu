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
from gestao.modules.pneu.models import MarcaPneu, Medida, ModeloPneu, Pneu, Medicao, Descarte,\
    Reforma, Alocacao
from django.contrib.admin import SimpleListFilter
from django.db.models import Sum

class EstadoFilter(SimpleListFilter):
    # Human-readable title which will be displayed in the
    # right admin sidebar just above the filter options.
    title = 'Estado'

    # Parameter for the filter that will be used in the URL query.
    parameter_name = 'estado'

    def lookups(self, request, model_admin):
        """
        Returns a list of tuples. The first element in each
        tuple is the coded value for the option that will
        appear in the URL query. The second element is the
        human-readable name for the option that will appear
        in the right sidebar.
        """
        return (
            ('bom', 'Bom estado'),
            ('ruim', 'Necessita reforma'),
            )

    def queryset(self, request, queryset):
        """
        Returns the filtered queryset based on the value
        provided in the query string and retrievable via
        `self.value()`.
        """
        # Compare the requested value (either '80s' or '90s')
        # to decide how to filter the queryset.
        medicoes = Medicao.objects.values('id_pneu').annotate(total=Sum('profundidade'))
        res = []
        for i in medicoes:
            if self.value() == 'bom' and i['total'] < 300:
                res.append(i['total'])
            if self.value() == 'ruim' and i['total'] > 300:
                res.append(i['total'])

        if self.value() == 'bom':
            return queryset.filter(id_pneu__in=res)
        if self.value() == 'ruim':
            return queryset.exclude(id_pneu__in=res)

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

    def queryset(self, request):
        q1 = Reforma.objects.filter(status=1).values_list('id_pneu_id', flat=True)
        q2 = Descarte.objects.all().values_list('id_pneu_id', flat=True)
        return super(PneuAdmin,self).queryset(request).exclude(id_pneu__in=list(q1)+list(q2))
        

    search_fields = ('num_fogo',)
    ordering = ['num_fogo','id_filial','situacao']  # menos antes do numero para order by desc
    list_display = ('id_pneu','num_fogo','situacao','id_filial','id_modelo_pneu','data_cadastro',)
    list_filter = ('id_modelo_pneu__id_marca_pneu','situacao','id_filial', )
    raw_id_fields = ('id_filial', 'id_modelo_pneu' )
    list_filter = (EstadoFilter,)

class AlocacaoAdmin(admin.ModelAdmin):
    class Meta:
        verbose_name = 'Alocacao do Pneu'

    search_fields = ('id_equipamento', 'id_pneu')
    ordering = ['id_equipamento',]  # menos antes do numero para order by desc
    list_display = ('id_equipamento','id_pneu','data_inicio','data_fim',
        'eixo','lado','posicao','status')
    raw_id_fields = ('id_equipamento', 'id_pneu' )

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
    list_display = ('id_pneu','data_saida','data_retorno', 'status')
    list_filter = ('id_pneu', 'status', )
    raw_id_fields = ('id_pneu','id_cidade',)

admin.site.register(MarcaPneu, MarcaPneuAdmin)
admin.site.register(Medida, MedidaAdmin)
admin.site.register(ModeloPneu, ModeloPneuAdmin)
admin.site.register(Pneu, PneuAdmin)
admin.site.register(Alocacao, AlocacaoAdmin)
admin.site.register(Medicao, MedicaoAdmin)
admin.site.register(Descarte, DescarteAdmin)
admin.site.register(Reforma, ReformaAdmin)
