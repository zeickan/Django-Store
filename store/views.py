# -*- encoding: utf-8 -*-

### Django Funcions
from django.shortcuts import render_to_response
from django.template.context import RequestContext
from django.utils.translation import ugettext
from django.conf import settings
from django.http import HttpResponse, HttpRequest, QueryDict, HttpResponseRedirect
from django.core.context_processors import csrf
from django.contrib.auth.decorators import login_required

# App Includes
from store.models import *
from store.forms import *
from store.functions import random_generator
# Python 
from decimal import Decimal

# Other Apps
import conekta
from paypal.standard.forms import PayPalPaymentsForm
import string
import json

#URL SITE 

SITE_URL = settings.SITE_URL




### Principal
def principal(request):
    #categorias = Categoria.objects.all()
    #productos = Producto.objects.all()
    template = "main.html"
    data = { 'dev': 'Hello World', }
    return render_to_response(template, context_instance=RequestContext(request,data))


# Obtenemos los productos
def getProducts(request,slug=False):
    
    if request.method == "GET":
        q = request.GET.get('q')
        dev = q

    if q:

        showCategoria = 'buscar'

        productos = Producto.objects.filter(nombre__contains=q,stock=True)

        categoryName = 'Buscador'

    else:

        showCategoria = slug

        if slug:
            categoria = Categoria.objects.get(slug=slug)
            id_cat = categoria.id
            productos = Producto.objects.filter(categoria=id_cat,stock=True)
            dev = categoria.id
            categoryName = categoria.nombre
        else:
            productos = Producto.objects.filter(stock=True)
            dev = 'none'
            categoryName = 'Todos los productos'


    try:
        basket = request.session['basket']
    except KeyError:
        basket = []

    current = len(basket)

    colores = Colores.objects.filter(temporada=True)

    if showCategoria:
        actualstr = showCategoria.replace("-"," ")
    else:
        actualstr = ''

    template = "store.html"
    data = {'colores' : colores,
            "productos":productos,
            "basket": basket,
            "current_basket": current,
            "actual": actualstr,
            "current": categoryName,
            "dev": dev }
    return render_to_response(template, context_instance=RequestContext(request,data))


# Ficha de producto
def getProduct(request,slug=False):

    try:
        basket = request.session['basket']
    except KeyError:
        basket = []

    dev = ''

    current = len(basket)

    showCategoria = 'Producto'

    productos = Producto.objects.filter(id=slug,stock=True)

    colores = Colores.objects.all()

    template = "product.html"
    data = {'colores' : colores,
            "productos":productos,
            "basket": basket,
            "current_basket": current,
            "actual": showCategoria,
            "current": productos,
            "dev": dev }
    return render_to_response(template, context_instance=RequestContext(request,data))


# Productos por Color
def getProductByColor(request,slug=False):

    try:
        basket = request.session['basket']
    except KeyError:
        basket = []

    dev = ''

    current = len(basket)

    showCategoria = 'Producto'


    color =  Colores.objects.filter(id=slug)

    productos = Producto.objects.filter(colores=slug)

    colores = Colores.objects.filter(temporada=True)

    template = "product.html"
    data = {'colores' : colores,
            "productos":productos,
            "basket": basket,
            "current_basket": current,
            "actual": showCategoria,
            "dev": dev }
    return render_to_response(template, context_instance=RequestContext(request,data))


"""
2014-05-08 04:59:04
"""

import datetime
import time


def date(unixtime, format = '%d/%m/%Y %H:%M:%S'):
    d = datetime.datetime.fromtimestamp(unixtime)
    return d.strftime(format)


# Cesta de pago
def basket(request,step = False):
    
    if request.user.is_authenticated():

        user = request.user

        profile = user.profile

        if step == False:
            paso = "confirm"
            save = ''
            custom = random_generator(32,string.ascii_lowercase + string.ascii_uppercase + string.digits ) #+ '!#$%&/()=?[]-_*'

            try:
                basket = request.session['basket']
            except KeyError:
                basket = []

            cesta = []
            for row in basket:
                cesta.append( re.sub("([^0-9]+)", "", row) )

            # productos en la cesta
            productos = Producto.objects.filter(id__in=cesta)

            sumar = []
            for items in productos:
                precio = Decimal(items.precio)
                sumar.append(precio)

            subtotal = sum(sumar)
            total = subtotal+150

            if request.method == 'POST':
                request.POST['custom'] = custom
                request.POST["comprador"] = user.id
                request.POST["subtotal"] = subtotal
                request.POST["envio"] = 150
                request.POST["total"] = total
                request.POST['shipping_text'] = 'Pendiente'
                request.POST['pub_date'] = date(time.time())
                
                formula = ProPedidoForm(request.POST)
                if formula.is_valid():
                    formula.save()
                    #request.session['basket'] = []
                    return HttpResponseRedirect('/store/checkout/address/?custom='+custom)
            else:
                formula = ProPedidoForm()

            

            data = {
               "user": user,
               "lista": productos,
               'profile': profile,
               "subtotal" : subtotal,
               "total": total,
               "formula": formula,
               "step" : paso,
               "custom" : custom,
               "save" : save,
            }

        elif step == "address":

            paso = step
            customcode = request.GET["custom"]
            save = 'address/?custom='+customcode            

            pedido = Pedido.objects.get(custom=customcode)

            if request.method == 'POST':
                request.POST['custom'] = customcode
                #request.POST['comprador'] = user.id
                request.POST['fac_pais'] = 'Mexico'
                request.POST['envio_pais'] = 'Mexico'
                request.POST['shipping_text'] = 'Pendiente'
        
                formula = AddressPedidoForm(request.POST,instance=pedido)
                if formula.is_valid():
                    formula.save()
                    return HttpResponseRedirect('/store/checkout/payment/?custom='+customcode)
            else:
                formula = AddressPedidoForm(instance=pedido)


            data = { 
                "user": user,
                'profile': profile,
                "step" : paso,
                "custom" : customcode,
                "selfie" : pedido,
                "save" : save,
                "formula" : formula,
                "items" : pedido,
            }

        elif step == "payment":

            paso = step
            customcode = request.GET["custom"]
            save = 'payment/?custom='+customcode

            pedido = Pedido.objects.get(custom=customcode)     

            if request.method == 'POST':
                request.POST['custom'] = customcode
                request.POST['payment_id'] = 'IDDELATPV'
                request.POST['payment_uri'] = 'uri://tpv'
                request.POST['shipping_id'] = 'IDDEELENVIO'
                request.POST['shipping_uri'] = 'uri://shipping'
                request.POST['shipping_text'] = 'Pendiente'
        
                formula = PaymentPedidoForm(request.POST,instance=pedido)
                if formula.is_valid():
                    formula.save()
                    return HttpResponseRedirect('/store/checkout/customer/?custom='+customcode)
            else:
                formula = PaymentPedidoForm(instance=pedido)       

            data = { 
                "user": user,
                'profile': profile,
                "step" : paso,
                "custom" : customcode,
                "selfie" : pedido,
                "save" : save,
                "formula" : formula,
                "items" : pedido,
            }

        elif step == "customer":

            paso = step
            customcode = request.GET["custom"]
            save = 'customer/?custom='+customcode

            pedido = Pedido.objects.get(custom=customcode)     


            if pedido.payment == 'paypal':

                itemname = "Pedido Red Carpet Manicure"

                paypal_dict = {
                    "business": "ventas@redcarpetmanicure.com.mx",
                    "amount": pedido.total,
                    "currency_code": "MXN",
                    "item_name": itemname,
                    "invoice": customcode,
                    "custom": customcode,
                    "notify_url": SITE_URL+"/basket/request/ipn/notify/",
                    "return_url": SITE_URL+"/basket/return/",
                    "cancel_return": SITE_URL+"/basket/cancel/",
                }

                checkout = PayPalPaymentsForm(initial=paypal_dict)

            elif pedido.payment == "conectaio":

                if pedido.payment_info == "":

                    conekta.api_key = 'key_vX6y75AAxqTdKsSG'

                    total = pedido.total

                    metainfo = {
                        "description": "ORDEN #"+customcode,
                        "amount": total.replace(".",""),
                        "currency": "MXN",
                        "reference_id": customcode,
                        "cash": {
                            "type": "oxxo"
                        },
                        "details": {
                            "name": user.first_name+" "+user.last_name,
                            "email": user.email,
                            "phone": "403-342-0642"
                        }
                    }


                    charge = conekta.Charge.create(metainfo)

                    response = charge.payment_method

                    pedido.payment_id = response['barcode']
                    pedido.payment_uri = response['barcode_url']
                    pedido.payment_text = response['expiry_date']
                    pedido.payment_info = json.dumps(response)
                    pedido.shipping_id = '00000'
                    pedido.shipping_uri = 'uri://'
                    pedido.save()
            
                    """
                    update = PaymentPedidoForm(instance=pedido)
                    if update.is_valid():
                        update.save()
                        return HttpResponseRedirect('/store/checkout/customer/?custom='+customcode)
                    """

                else :

                    response = { 'barcode': pedido.payment_id, 'barcode_url': pedido.payment_uri }

                checkout = response

            else: 

                checkout = False



            data = { 
                "user": user,
                'profile': profile,
                "step" : paso,
                "custom" : customcode,
                "selfie" : pedido,
                "save" : save,
                "payment_method" : pedido.payment,
                #"formula" : formula,
                "checkout" : checkout,
                "items" : pedido,
                
            }

        else:
            paso = step
            save = 'payment'
            custom = request.GET["custom"]


            data = { }

        return render_to_response("checkout.html", context_instance=RequestContext(request,data))

    else:

        return HttpResponseRedirect("/accounts/login/")
    
    

def seccion(request,slug = False):

    if slug == "videos":
        template = "videos.html"
        data = {'dev':'dev',"actual": 'videos',}
    elif slug == "faq":
        template = "faq.html"
        data = {'dev':'dev',"actual": 'FAQ',}
    else:
        template = "aplicar.html"
        data = {'dev':'dev',"actual": 'Como aplicar',}


    return render_to_response(template, context_instance=RequestContext(request,data))






def ipn(request):

    context = {"hello": "hola mundo"}

    return render_to_response("empty", context)



"""
USERS OPTIONS
"""


from django.shortcuts import render


def register(request):

    if request.user.is_authenticated():

        return HttpResponseRedirect("/accounts/profile/")

    else:

        if request.method == 'POST':
            form = ExtendedUserCreationForm(request.POST)
            if form.is_valid():
                new_user = form.save()
                return HttpResponseRedirect("/accounts/profile/registerSuccess")
        else:
            form = ExtendedUserCreationForm()

        return render(request, "registration/register.html", { 'form': form, })





def pruebas(request):

    if request.session.get('cesta', False):
        var = 'empty'
        bar = "Ya estaba"
    else:
        request.session['cesta'] = []
        bar = "Se creo"

    
    c = len(request.session['cesta']['producto'])
    
    
    
    request.session['cesta']['producto'].insert(1,id)
    
    #request.session.clear()
    """#
    request.session['cesta'][0] = 'test'
    request.session['cesta'][1] = 'prueba'
    request.session['cesta'][2] = 'yeah'
    """
    #request.session['cesta']['producto'] = []
    #request.session['has_commented'] = True
    #request.session['basket'] = "Funciona"
    #del request.session['cesta']

    try:
        foo = request.session['cesta']
    except KeyError:
        foo = False

    
    return foo


"""
    menu = clase.objects.all()
    galeria = Elemento.objects.filter(mostrar = True)
    template = "galeria.html"
    data = {'galeria' : galeria, "menu" : menu}
    return render_to_response(template, context_instance=RequestContext(request,data))

"""
    




"""
def buy_my_item(request):
    item = {"amt": "10.00",             # amount to charge for item
        "inv": "inventory",         # unique tracking variable paypal
        "custom": "tracking",       # custom tracking variable for you
        "cancelurl": "http://127.0.0.1:8000/cancel.html",  # Express checkout cancel url
        "returnurl": "http://127.0.0.1:8000/success.html"}  # Express checkout return url

    kw = {"item": item,                            # what you're selling
        "payment_template": "payment.html",      # template name for payment
        "confirm_template": "confirmation.html", # template name for confirmation
        "success_url": "/success/"}              # redirect location after success

    ppp = PayPalPro(**kw)
    return ppp(request)


def payment(request):
    # Create the instance.
    form = PayPalPaymentsForm()
    context = {"form": form}
    return render_to_response("payment.html", context)


def confirmation(request):
    # Create the instance.
    form = PayPalPaymentsForm()
    context = {"form": form}
    return render_to_response("confirmation.html", context)
"""

def producto(request):   
    template = "producto.html"
    data = {'time' : 'hola'}    
    return render_to_response(template, context_instance=RequestContext(request,data))

def productos(request):
    template = "productos.html"
    data = {'time' : 'hola'}    
    return render_to_response(template, context_instance=RequestContext(request,data))
    

def cotizar(request):   
    template = "cotizar.html"
    data = {'time' : 'hola'}    
    return render_to_response(template, context_instance=RequestContext(request,data))