# -*- encoding: utf-8 -*-

from django.contrib.contenttypes.models import ContentType
from django.db import models
from tinymce.models import HTMLField
import os
from django.core.exceptions import ValidationError


from paypal.standard.ipn.signals import payment_was_successful
from paypal.standard.ipn.signals import payment_was_flagged


"""
Nombre del modelo en plural 
Cuando agrega S y no es el caso

class Meta:
    OPCIONES = ( ('Yes', 'Activo'), ('No', 'Inactivo'), )
    verbose_name_plural = "Plural S"
    active = models.CharField( blank=True, max_length=50, choices=OPCIONES)


    #token = models.IntegerField(blank=True,null=True)
    #inherit = models.ForeignKey('self',blank=True, null=True,help_text="Categoria relacionada",related_name="subcategoria")
    #parent = models.ForeignKey("self", blank=True, null=True , related_name="children")

"""

class Categoria(models.Model):
        nombre = models.CharField(blank=False, max_length=200)
        slug = models.SlugField()
        parent = models.ForeignKey('self', blank=True, null=True, related_name='child')
        activo = models.BooleanField(default=True,help_text="Activar categoría")

        class Admin:
                list_display = ('nombre', '_parents_repr')

        def __unicode__(self):
                p_list = self._recurse_for_parents(self)
                p_list.append(self.nombre)
                return self.get_separator().join(p_list)

        def get_absolute_url(self):
                if self.parent_id:
                        return "/tag/%s/%s/" % (self.parent.slug, self.slug)
                else:
                        return "/tag/%s/" % (self.slug)

        def _recurse_for_parents(self, cat_obj):
                p_list = []
                if cat_obj.parent_id:
                        p = cat_obj.parent
                        p_list.append(p.nombre)
                        more = self._recurse_for_parents(p)
                        p_list.extend(more)
                if cat_obj == self and p_list:
                        p_list.reverse()
                return p_list

        def get_separator(self):
                return ' :: '

        def _parents_repr(self):
                p_list = self._recurse_for_parents(self)
                return self.get_separator().join(p_list)
        _parents_repr.short_description = "Tag parents"

        def save(self):
                p_list = self._recurse_for_parents(self)
                if self.nombre in p_list:
                        raise ValidationError("You must not save a category in itself!")
                super(Categoria, self).save()




class Colores(models.Model):
    color = models.CharField(blank=False,max_length=150)
    imagen = models.ImageField(upload_to='uploads/images/%Y/%m/%d',blank=True,null=True)
    class Meta:
        verbose_name_plural = "Colores"
    def __unicode__(self):
        return "%s" % self.color

class Producto(models.Model):
    nombre = models.CharField(blank=False, max_length=100)
    descripcion = models.TextField(blank=False)
    categoria = models.ForeignKey(Categoria)
    imagen = models.FileField(blank=True,upload_to='documents/%Y/%m/%d')
    colores = models.ManyToManyField(Colores,blank=True,null=True)
    #ventaja = HTMLField(blank=True,null=True)
    #ficha = models.TextField(blank=True,null=True)
    def __unicode__(self):
        return "%s" % self.nombre

class Pedido(models.Model):
    comprador = models.CharField(blank=False,max_length=150)
    productos = models.ManyToManyField(Producto,blank=True,null=True)
    paid = models.BooleanField(blank=False,default=False)

    def __unicode__(self):
        return "%s" % self.comprador

#### PAYPAL PAYMENTS

def show_me_the_money(sender, **kwargs):
    ipn_obj = sender

    # Undertake some action depending upon `ipn_obj`.
    if ipn_obj.payment_status == "Completed":
        Pedido.objects.update(comprador=ipn_obj.payer_id)


payment_was_successful.connect(show_me_the_money)
payment_was_flagged.connect(show_me_the_money)

"""
def confirm_payment(sender, **kwargs):
    # it's important to check that the product exists
    logging.debug('** CONFIRMED PAYMENT ***') #never reached this point
    try:
        bfeat = BuyingFeature.objects.get(slug=sender.item_number)
    except BuyingFeature.DoesNotExist:
        return
    # And that someone didn't tamper with the price
    if int(bfeat.price) != int(sender.mc_gross):
        return
    # Check to see if it's an existing customer
    try:
        customer = User.objects.get(email=sender.payer_email)
    except User.DoesNotExist:
        customer = User.objects.create(
            email=sender.payer_email,
            first_name=sender.first_name,
            last_name=sender.last_name
        )
    # Add a new order
    CustomerOrder.objects.create(customer=customer, feature=bfeat, quantity=1, paypal_email=sender.payer_email, invoice=sender.invoice, remarks='')

payment_was_successful.connect(confirm_payment)
payment_was_flagged.connect(confirm_payment)
"""




"""
class Norma(models.Model):
    norma = models.CharField(max_length=30)
    description = models.CharField(blank=True,max_length=300)
    def __unicode__(self):
        return "%s" % self.norma

class Producto(models.Model):
    nombre = models.CharField(blank=False, max_length=100)
    description = HTMLField(blank=True,null=True)
    categoria = models.ForeignKey(categoria)
    imagen = models.FileField(blank=True,upload_to='documents/%Y/%m/%d')
    norma = models.ManyToManyField(Norma,blank=True,null=True)
    ventaja = HTMLField(blank=True,null=True)
    ficha = models.TextField(blank=True,null=True)

    class Meta:
        unique_together = ('nombre','description')

    def __unicode__(self):
        return unicode(self.nombre)


class Medidas(models.Model):
    nombre = models.CharField(blank=False,max_length=50)
    valor = models.CharField(blank=False,max_length=60)
    producto = models.ForeignKey(Producto)


# extra

class Adjunto(models.Model):
    nombre = models.CharField(blank=False,max_length=150)
    docfile = models.FileField(upload_to='uploads/files/%Y/%m/%d',max_length=100)
    def __unicode__(self):
        return "%s" % self.nombre



class Foto(models.Model):
    nombre = models.CharField(blank=False,max_length=150)
    foto = models.ImageField(upload_to='uploads/images/%Y/%m/%d')
    def __unicode__(self):
        return "%s" % self.foto
"""