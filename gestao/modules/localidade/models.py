# -*- coding: utf-8 -*-
###############################################################################
# Modulo de filial
#
# @author: Victor Britto e Barros
# @since: 24/04/2013
###############################################################################

from django.db import models
from django.utils.translation import ugettext_lazy as _

class Estado(models.Model):
    id_estado = models.AutoField(primary_key=True)
    uf = models.CharField(max_length=2)
    nome = models.CharField(max_length=255)

    class Meta:
        verbose_name = ('Estado') # nome singular
        verbose_name_plural = ('Estados') # nome plural
        db_table = u'estado' # nome da tabela

    def __unicode__(self):
        return str(self.uf)

class Cidade(models.Model):
    id_cidade = models.AutoField(primary_key=True)
    id_estado = models.ForeignKey(Estado,
        related_name='cidade_do_estado',
        db_column='id_estado')
    nome = models.CharField(max_length=255)

    class Meta:
        verbose_name = ('Cidade') # nome singular
        verbose_name_plural = ('Cidades') # nome plural
        db_table = u'cidade' # nome da tabela

    def __unicode__(self):
        return str(self.nome)