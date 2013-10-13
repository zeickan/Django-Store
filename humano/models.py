from django.db import models

# Create your models here.

class Rango(models.Model):
    titulo = models.CharField(blank=False,max_length=50)
    def __unicode__(self):
        return "%s" % self.titulo

class Role(models.Model):
	titulo = models.CharField(blank=False,max_length=50)
	def __unicode__(self):
		return "%s" % self.titulo


class Tipo(models.Model):
    titulo = models.CharField(max_length=100)
    def __unicode__(self):
        return "%s" % self.titulo
  
class Colaborador(models.Model):
    nombre = models.CharField(blank=False,max_length=100)
    email = models.EmailField(blank=False,max_length=255)
    twitter = models.CharField('Twitter @',blank=True,max_length=50)
    pais = models.CharField(blank=False,max_length=80)

    rango = models.ForeignKey(Rango)
    role = models.ForeignKey(Role)
    tipo = models.ForeignKey(Tipo)

    def __unicode__(self):
        return "%s" % self.nombre

