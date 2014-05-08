# -*- encoding: utf-8 -*-

from django.contrib.contenttypes.models import ContentType
from django.db import models
from tinymce.models import HTMLField
from django.contrib.auth.models import User
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
    imagen = models.FileField(upload_to='uploads/images/%Y/%m/%d',blank=True,null=True)
    temporada = models.BooleanField(default=True,blank=True,help_text="Marcar si el color es de temporada")
    class Meta:
        verbose_name_plural = "Colores"
    def __unicode__(self):
        return "%s" % self.color

class Producto(models.Model):
    nombre = models.CharField(blank=False, max_length=100)
    descripcion = HTMLField()
    categoria = models.ForeignKey(Categoria)
    imagen = models.FileField(blank=True,upload_to='documents/%Y/%m/%d')
    colores = models.ManyToManyField(Colores,blank=True,null=True)
    #ventaja = HTMLField(blank=True,null=True)
    #ficha = models.TextField(blank=True,null=True)
    precio = models.DecimalField(blank=True,null=True,max_digits=10, decimal_places=2,default='0.00')
    stock = models.BooleanField(blank=True,default=True,help_text='Desmarcar si no hay stock disponible')

    def get_colors(self):
        return self.colores_set.all()

    def __unicode__(self):
        return "%s" % self.nombre

    def dig_colores(self):
        return ', '.join([obj.color for obj in self.colores.all()])

class Pedido(models.Model):
    comprador = models.CharField(blank=False,max_length=150)
    pub_date = models.DateTimeField('date published',null=True,blank=True)
    productos = models.ManyToManyField(Producto,blank=True,null=True)
    paid = models.BooleanField(blank=False,default=False)
    custom = models.CharField(blank=True,null=True,max_length=150)
    coupon = models.CharField(blank=True,null=True,max_length=50)
    subtotal = models.CharField(blank=True,null=True,max_length=50)
    envio = models.CharField(blank=True,null=True,max_length=50)
    total = models.CharField(blank=True,null=True,max_length=50)
    fac_nombre = models.CharField(blank=True,null=True,max_length=200)
    fac_calle = models.CharField(blank=True,null=True,max_length=250)
    fac_colonia = models.CharField(blank=True,null=True,max_length=250)
    fac_cp = models.CharField(blank=True,null=True,max_length=5)
    fac_ciudad = models.CharField(blank=True,null=True,max_length=100)
    fac_estado = models.CharField(blank=True,null=True,max_length=100)
    fac_pais = models.CharField(blank=True,null=True,max_length=100)
    fac_telefono = models.CharField(blank=True,null=True,max_length=50)
    envio_nombre = models.CharField(blank=True,null=True,max_length=250)
    envio_calle = models.CharField(blank=True,null=True,max_length=250)
    envio_colonia = models.CharField(blank=True,null=True,max_length=250)
    envio_cp = models.CharField(blank=True,null=True,max_length=5)
    envio_ciudad = models.CharField(blank=True,null=True,max_length=100)
    envio_estado = models.CharField(blank=True,null=True,max_length=100)
    envio_pais = models.CharField(blank=True,null=True,max_length=100)
    envio_telefono = models.CharField(blank=True,null=True,max_length=50)

    payment = models.CharField(blank=True,null=True,max_length=50)
    payment_id = models.CharField(blank=True,null=True,max_length=255)
    payment_uri = models.CharField(blank=True,null=True,max_length=255)
    payment_text = models.CharField(blank=True,null=True,max_length=255)
    payment_info = models.CharField(blank=True,null=True,max_length=255)

    shipping = models.CharField(blank=True,null=True,max_length=50)
    shipping_id = models.CharField(blank=True,null=True,max_length=255)
    shipping_uri = models.CharField(blank=True,null=True,max_length=255)
    shipping_text = models.CharField(blank=True,null=True,max_length=255)
    shipping_info = models.CharField(blank=True,null=True,max_length=255)

    def __unicode__(self):
        return "%s" % self.comprador




#### PAYPAL PAYMENTS

def show_me_the_money(sender, **kwargs):
    ipn_obj = sender

    # Undertake some action depending upon `ipn_obj`.
    if ipn_obj.payment_status == "Completed":
        
        customcode = ipn_obj.custom
        Pedido.objects.filter(custom=customcode).update(paid=True)

        #Entry.objects.filter(pub_date__year=2007).update(headline='Everything is the same')
        #Pedido.objects.update(comprador=ipn_obj.payer_id,)


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