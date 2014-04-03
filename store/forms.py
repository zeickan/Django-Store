# -*- encoding: utf-8 -*-

import re
from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from store.models import *
from django.forms import Textarea

#### PEDIDOS

class PedidoForm(forms.ModelForm):

    class Meta:
        model = Pedido


class AddressPedidoForm(forms.ModelForm):

    class Meta:
        model = Pedido
        fields = ('custom','fac_nombre','fac_calle','fac_colonia','fac_cp','fac_ciudad','fac_estado','fac_pais','envio_nombre','envio_calle','envio_colonia','envio_cp','envio_ciudad','envio_estado','envio_pais')

class PaymentPedidoForm(forms.ModelForm):

    class Meta:
        model = Pedido
        fields = ('custom','payment','payment_id','payment_uri','payment_text','payment_info','shipping','shipping_id','shipping_uri','shipping_text','shipping_info')



class UniqueCustomCode(forms.CharField):
    """
    Validamos que el Custom Code no se este usando ya (podria pasar)
    """
    def validate(self,value):
        super(forms.CharField, self).validate(value)
        try:
            Pedido.objects.get( custom = value )
            raise forms.ValidationError("Custom Code Invalido")
        except Pedido.MultipleObjectsReturned:
            raise forms.ValidationError("Custom Code invalido")
        except Pedido.DoesNotExist:
            pass


class ProPedidoForm(PedidoForm):

    comprador = forms.CharField(required=False,max_length=20)
    custom = UniqueCustomCode(required = True, label = 'Custom Code')
    fac_nombre = forms.CharField(required=False,max_length=255)
    subtotal = forms.CharField(required=False,max_length=20)
    envio = forms.CharField(required=False,max_length=20)
    total = forms.CharField(required=False,max_length=20)

    def __init__(self, *args, **kwargs):
        """
        Cambiar orden de los campos y personalizar Comprador
        """
        super(PedidoForm, self).__init__(*args, **kwargs)
        self.fields.keyOrder = ['comprador','custom', 'productos','subtotal','envio','total']
 
    def __get_userid(self,user):
        # TODO: Something more efficient?
        derived_username = user
        return derived_username
    
    def clean(self, *args, **kwargs):

        cleaned_data = super(PedidoForm, self).clean(*args, **kwargs)
        
        #cleaned_data['comprador'] = self.__get_userid( args )

        return cleaned_data
        
    def save(self, commit=True):

        form = super(PedidoForm, self).save(commit)

        if form:
            form.comprador = self.cleaned_data['comprador']
            form.custom = self.cleaned_data['custom']
            form.productos = self.cleaned_data['productos']
            form.subtotal = self.cleaned_data['subtotal']
            form.envio = self.cleaned_data['envio']
            form.total = self.cleaned_data['total']

            if commit:
                form.save()
        return form




##### USUARIOS

class UniqueUserEmailField(forms.EmailField):
    """
    An EmailField which only is valid if no User has that email.
    """
    def validate(self, value):
        super(forms.EmailField, self).validate(value)
        try:
            User.objects.get(email = value)
            raise forms.ValidationError("Ese correo ya fue registrado")
        except User.MultipleObjectsReturned:
            raise forms.ValidationError("Ese correo ya fue registrado")
        except User.DoesNotExist:
            pass
 
 
class ExtendedUserCreationForm(UserCreationForm):
    """
    Extends the built in UserCreationForm in several ways:
    
    * Adds an email field, which uses the custom UniqueUserEmailField,
      that is, the form does not validate if the email address already exists
      in the User table.
    * The username field is generated based on the email, and isn't visible.
    * first_name and last_name fields are added.
    * Data not saved by the default behavior of UserCreationForm is saved.
    """
    
    username = forms.CharField(required = True, max_length = 50)
    email = UniqueUserEmailField(required = True, label = 'E-mail')
    first_name = forms.CharField(required = True, max_length = 30,label="Nombre")
    last_name = forms.CharField(required = True, max_length = 30,label="Apellidos")
    
    def __init__(self, *args, **kwargs):
        """
        Changes the order of fields, and removes the username field.
        """
        super(UserCreationForm, self).__init__(*args, **kwargs)
        self.fields.keyOrder = ['username','email', 'first_name', 'last_name', 'password1', 'password2']
 
    def __generate_username(self, email):
        """
        A simple way of deriving a username from an email address.
        Hat tip: http://bit.ly/eIUR5R
        
        >>> User.objects.all().order_by('-id')[0].id
        1
        >>> self.__generate_username("abc@gmail.com")
        abcabc2
        >>> self.__generate_username("hey.what.is.up@hotmail.com")
        heysup3
        """
        # TODO: Something more efficient?
        highest_user_id = User.objects.all().order_by('-id')[0].id
        leading_part_of_email = email.split('@',1)[0]
        leading_part_of_email = re.sub(r'[^a-zA-Z0-9+]', '',
                                       leading_part_of_email)
        truncated_part_of_email = leading_part_of_email[:3] \
                                  + leading_part_of_email[-3:]
        derived_username = truncated_part_of_email + str(highest_user_id+1)
        return derived_username
    
    def clean(self, *args, **kwargs):
        """
        Normal cleanup + username generation.
        """
        cleaned_data = super(UserCreationForm, self).clean(*args, **kwargs)
        #if cleaned_data.has_key('email'):
        #    cleaned_data['username'] = self.__generate_username( cleaned_data['email'] )

        return cleaned_data
        
    def save(self, commit=True):
        """
        Saves the email, first_name and last_name properties, after the normal
        save behavior is complete.
        """
        user = super(UserCreationForm, self).save(commit)
        if user:
            user.username = self.cleaned_data['username']
            user.email = self.cleaned_data['email']
            user.first_name = self.cleaned_data['first_name']
            user.last_name = self.cleaned_data['last_name']
            user.set_password(self.cleaned_data['password1'])
            if commit:
                user.save()
        return user