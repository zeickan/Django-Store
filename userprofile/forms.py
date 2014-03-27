# -*- coding: utf-8 -*-

from django import forms
from models import UserProfile
from django.contrib.auth.models import User

from django.forms import Textarea


class UserInformation(forms.ModelForm):

	class Meta:
		model = User
		fields = ('first_name','last_name','email')


class UserProfileForm(forms.ModelForm):

    class Meta:
        model = UserProfile
        fields = ('calle','direccion','cp','ciudad','estado',"telefono")
        widgets = {
            #'direccion': Textarea(attrs={'cols': 80, 'rows': 20}),
        }


class UserShippingAddress(forms.ModelForm):

	class Meta:
		model = UserProfile
		fields = ('calle_envio','direccion_envio','cp_envio','ciudad_envio','estado_envio',"telefono_envio")
		labels = {
            'calle_envio': ('Nombre de facturación'),
        }