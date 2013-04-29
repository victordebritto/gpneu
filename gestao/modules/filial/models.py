# -*- coding: utf-8 -*-
###############################################################################
# Modulo de filial
#
# @author: Victor Britto e Barros
# @since: 24/04/2013
###############################################################################

from django.db import models
from django.utils.translation import ugettext_lazy as _
from gestao.modules.localidade.models import Cidade, Estado


class Filial(models.Model):
    id_filial = models.AutoField(primary_key=True)
    
    id_cidade = models.ForeignKey(Cidade,
        related_name='cidade_da_filial',
        db_column='id_cidade')

    nome = models.CharField(max_length=255)
    numero = models.IntegerField()
    endereco = models.CharField(max_length=255)
    cep = models.IntegerField()
    cnpj = models.IntegerField()
    status = models.BooleanField()

    class Meta:
        verbose_name = ('Filial')
        verbose_name_plural = ('Filiais')
        db_table = u'filial'

    def __unicode__(self):
        return str(self.nome)