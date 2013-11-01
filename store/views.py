# -*- encoding: utf-8 -*-

from django.shortcuts import render_to_response
from django.template.context import RequestContext
from django.utils.translation import ugettext
from django.conf import settings
from store.models import *
from django.http import HttpResponse, HttpRequest, QueryDict
from django.contrib.auth.decorators import login_required


import pprint


SITE_URL = settings.SITE_URL

from paypal.standard.forms import PayPalPaymentsForm




def principal(request):
    categorias = Categoria.objects.all()
    productos = Producto.objects.all()
    template = "main.html"
    data = {'categorias' : categorias, "productos":productos }
    return render_to_response(template, context_instance=RequestContext(request,data))



def getProducts(request,categoria=False):
    
    if request.method == "GET":
        dev = request.GET.get('add')
    
    showCategoria = categoria
    
    productos = Producto.objects.all()
    colores = Colores.objects.all()
    try:
        basket = request.session['basket']
    except KeyError:
        basket = []
        
    current = len(basket)
    
    template = "store.html"
    data = {'colores' : colores,
            "productos":productos,
            "basket": basket,
            "current_basket": current,
            "actual": showCategoria,
            "dev": dev }
    return render_to_response(template, context_instance=RequestContext(request,data))




def basket(request):
     # What you want the button to do.
    paypal_dict = {
        "business": "paypal-facilitator@zeickan.com",
        "amount": "0.00",
        "currency_code": "MXN",
        "item_name": "Compra #1",
        "invoice": "0001-32-0001",
        "notify_url": SITE_URL+"/basket/request/ipn/notify/",
        "return_url": SITE_URL+"/basket/return/",
        "cancel_return": SITE_URL+"/basket/return/",

    }

    # Create the instance.
    form = PayPalPaymentsForm(initial=paypal_dict)
    
    if request.user.is_authenticated():
        dev = 'Soy usuario'
        usua = request.user.username
    else:
        dev = 'No soy nadie'
        usua = 'Anonymous'
    
    
    context = {"form": form,
               "user": usua,
               "dev" : dev
            }
    return render_to_response("checkout.html", context)


def ipn(request):

    context = {"hello": "hola mundo"}

    return render_to_response("empty", context)


@login_required
def profile(request):
    
    context = {"hello": "hola mundo"}

    return render_to_response("registration/profile.html", context)


def register(request):
    
    context = {"hello": "hola mundo"}

    return render_to_response("registration/register.html", context)





def test(request):

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