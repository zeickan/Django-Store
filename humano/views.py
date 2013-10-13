# -*- encoding: utf-8 -*-

from django.http import HttpResponse,HttpResponseRedirect
from django.template.loader import get_template 
from django.template import Context
from datetime import datetime
from django.shortcuts import render_to_response
from django.template import RequestContext
from humano.models import *
import django


def joinby(value, arg):
    return arg.join(value)

def genTextFile(request):

	foo = "Foo Fighter"

	equipo = Colaborador.objects.filter(tipo=2)

	gracias = Colaborador.objects.filter(tipo=1)

	lang = ['Spanish','English']

	tech = ["HTML5",'CSS3','jQuery','Javascript','Django 1.5','Python 2.7']

	date = "2013/08/30"
	
	return render_to_response( 
		template_name='humans.txt', 
		dictionary={ 
			'team': equipo, 
			'thanks': gracias,
			'lang' : lang,
			'tech' : tech,
			'date' : date
			}, 
		mimetype='text/plain', 
		context_instance=RequestContext(request) 
		)