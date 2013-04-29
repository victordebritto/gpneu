# -*- coding: utf-8 -*-
###############################################################################
# Modulo de Equipamentos
#
# @author: Victor Britto e Barros
# @since: 25/04/2013
###############################################################################

from django.db import models
from django.utils.translation import ugettext_lazy as _
from gestao.modules.filial.models import Filial

class MarcaEquipamento(models.Model):
    id_marca_equipamento = models.AutoField(primary_key=True)
    nome = models.CharField(max_length=255)

    class Meta:
        verbose_name = ('Marca') # nome singular
        verbose_name_plural = ('Marcas') # nome plural
        db_table = u'marca_equipamento' # nome da tabela

    def __unicode__(self):
        return str(self.nome)

class Tracao(models.Model):
    id_tracao = models.AutoField(primary_key=True)
    descricao = models.CharField(max_length=20)

    class Meta:
        verbose_name = ('Tração') # nome singular
        verbose_name_plural = ('Trações') # nome plural
        db_table = u'tracao' # nome da tabela

    def __unicode__(self):
        return str(self.descricao)

class ModeloEquipamento(models.Model):
    id_modelo_equipamento = models.AutoField(primary_key=True)
    id_marca_equipamento = models.ForeignKey(MarcaEquipamento,
        related_name='marca_do_equipamento_fk',
        db_column='id_marca_equipamento')
    id_tracao = models.ForeignKey(Tracao,
        related_name='tracao_do_equipamento',
        db_column='id_tracao')
    nome = models.CharField(max_length=100)

    class Meta:
        verbose_name = ('Modelo') # nome singular
        verbose_name_plural = ('Modelos') # nome plural
        db_table = u'modelo_equipamento' # nome da tabela

    def __unicode__(self):
        return str(self.nome)

class Frota(models.Model):
    id_frota = models.AutoField(primary_key=True)
    id_filial = models.ForeignKey(Filial, #IntegerField
        related_name='filial_da_frota',
        db_column='id_filial')
    num_frota = models.IntegerField()
    descricao = models.TextField()

    class Meta:
        verbose_name = ('Frota') # nome singular
        verbose_name_plural = ('Frotas') # nome plural
        db_table = u'frota' # nome da tabela

    def __unicode__(self):
        return str(self.num_frota)


class Equipamento(models.Model):
    id_equipamento = models.AutoField(primary_key=True)
    id_modelo_equipamento = models.ForeignKey(ModeloEquipamento,
        related_name='modelo_do_equipamento',
        db_column='id_modelo_equipamento')
    id_frota = models.ForeignKey(Frota,
        related_name='frota_do_equipamento',
        db_column='id_frota')
    num_equipamento = models.CharField(max_length=10)
    placa = models.CharField(max_length=10)
    descricao = models.TextField()

    class Meta:
        verbose_name = ('Equipamento') # nome singular
        verbose_name_plural = ('Equipamentos') # nome plural
        db_table = u'equipamento' # nome da tabela

    def __unicode__(self):
        return str(self.num_equipamento)