# -*- coding: utf-8 -*-
###############################################################################
# Modulo de Pneu
#
# @author: Victor Britto e Barros
# @since: 27/04/2013
###############################################################################

from django.db import models
from django.utils.translation import ugettext_lazy as _
from datetime import date
from gestao.modules.filial.models import Filial
from gestao.modules.localidade.models import Estado, Cidade
from gestao.modules.equipamento.models import Equipamento

class MarcaPneu(models.Model):
    id_marca_pneu = models.AutoField(primary_key=True)
    nome = models.CharField(max_length=255)

    class Meta:
        verbose_name = ('Marca') 
        verbose_name_plural = ('Marcas') 
        db_table = u'marca_pneu'

    def __unicode__(self):
        return str(self.nome)

class Medida(models.Model):
    id_medida = models.AutoField(primary_key=True)
    medida = models.CharField(max_length=50)

    class Meta:
        verbose_name = ('Medida') 
        verbose_name_plural = ('Medidas') 
        db_table = u'medida'

    def __unicode__(self):
        return str(self.medida)

class ModeloPneu(models.Model):
    id_modelo_pneu = models.AutoField(primary_key=True)
    id_marca_pneu = models.ForeignKey(MarcaPneu,
        related_name='marca_do_pneu',
        db_column='id_marca_pneu')
    id_medida = models.ForeignKey(Medida,
        related_name='medida_do_pneu',
        db_column='id_medida')
    profundidade = models.FloatField()
    profundade_reforma = models.FloatField()
    nome = models.CharField(max_length=100)

    class Meta:
        verbose_name = ('Modelo') # nome singular
        verbose_name_plural = ('Modelos') # nome plural
        db_table = u'modelo_pneu' # nome da tabela

    def __unicode__(self):
        return str(self.nome)

SITUACAO_PNEU_CHOICES = (
    (1, 'Estoque'),
    (2, 'Equipamento'),
    )

class Pneu(models.Model):
    id_pneu = models.AutoField(primary_key=True)
    id_filial = models.ForeignKey(Filial,
        related_name='filial_do_pneu',
        db_column='id_filial')
    id_modelo_pneu = models.ForeignKey(ModeloPneu,
        related_name='modelo_do_pneu',
        db_column='id_modelo_pneu')
    num_fogo = models.IntegerField()
    situacao = models.IntegerField('Situação',
        choices=SITUACAO_PNEU_CHOICES,
        max_length=1)
    data_cadastro = models.DateField()

    class Meta:
        verbose_name = ('Pneu') # nome singular
        verbose_name_plural = ('Pneus') # nome plural
        db_table = u'pneu' # nome da tabela

    def __unicode__(self):
        return str(self.num_fogo)


class Alocacao(models.Model):
    id_alocacao = models.AutoField(primary_key=True)
    id_pneu = models.ForeignKey(Pneu,
        related_name='id_do_pneu',
        db_column='id_pneu')
    id_equipamento = models.ForeignKey(Equipamento,
        related_name='id_do_equipamento',
        db_column='id_equipamento')
    data_inicio = models.DateField()
    data_fim = models.DateField(blank=True)
    eixo = models.IntegerField()
    lado = models.CharField(max_length=1)
    posicao = models.CharField(max_length=1)
    status = models.BooleanField(default=True)

    class Meta:
        verbose_name = ('Alocacao') # nome singular
        verbose_name_plural = ('Alocacoes') # nome plural
        db_table = u'alocacao' # nome da tabela

    def __unicode__(self):
        return str(self.id_pneu)

SITUACAO_PNEU_CHOICES = (
    (1, 'Estoque'),
    (2, 'Equipamento'),
    )

class Medicao(models.Model):
    id_medicao = models.AutoField(primary_key=True)
    id_pneu = models.ForeignKey(Pneu,
        related_name='medicao_do_pneu',
        db_column='id_pneu')
    profundidade = models.FloatField()
    horimetro = models.FloatField()
    data_medicao = models.DateField()
    descricao = models.TextField(blank=True)
    

    class Meta:
        verbose_name = ('Medição') # nome singular
        verbose_name_plural = ('Medições') # nome plural
        db_table = u'medicao' # nome da tabela

    def __unicode__(self):
        return str(self.id_pneu)

class Descarte(models.Model):
    id_descarte = models.AutoField(primary_key=True)
    id_pneu = models.ForeignKey(Pneu,
        related_name='descarte_do_pneu',
        db_column='id_pneu')
    data_descarte = models.DateField()
#    foto = models.I
    motivo = models.TextField()
    

    class Meta:
        verbose_name = ('Descarte') # nome singular
        verbose_name_plural = ('Descartes') # nome plural
        db_table = u'descarte' # nome da tabela

    def __unicode__(self):
        return str(self.id_pneu)

class Reforma(models.Model):
    id_reforma = models.AutoField(primary_key=True)
    id_pneu = models.ForeignKey(Pneu,
        related_name='reforma_do_pneu',
        db_column='id_pneu')
    id_cidade = models.ForeignKey(Cidade,
        related_name='cidade_reforma_do_pneu',
        db_column='id_cidade')
    endereco = models.CharField(max_length=255)
    data_saida = models.DateField()
    data_retorno = models.DateField()
    #foto = models.ImageField()
    descricao = models.TextField(blank=True)
    status = models.BooleanField(default=True)

    class Meta:
        verbose_name = ('Reforma') # nome singular
        verbose_name_plural = ('Reformas') # nome plural
        db_table = u'reforma' # nome da tabela

    def __unicode__(self):
        return str(self.id_pneu)
