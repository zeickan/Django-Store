# -*- encoding: utf-8 -*-

from django.shortcuts import render_to_response
from django.template.context import RequestContext
from django.utils.translation import ugettext
from django.conf import settings
from store.models import *
from django.http import HttpResponse, HttpRequest, QueryDict, HttpResponseRedirect
from django.core.context_processors import csrf
from django.contrib.auth.decorators import login_required
from forms import ExtendedUserCreationForm
from paypal.standard.forms import PayPalPaymentsForm

import re

SITE_URL = settings.SITE_URL

def principal(request):
    #categorias = Categoria.objects.all()
    #productos = Producto.objects.all()
    template = "main.html"
    data = { 'dev': 'Hello World', }
    return render_to_response(template, context_instance=RequestContext(request,data))


def getProducts(request,slug=False):
    
    if request.method == "GET":
        dev = request.GET.get('add')

    showCategoria = slug

    if slug:
        categoria = Categoria.objects.get(slug=slug)
        id_cat = categoria.id
        productos = Producto.objects.filter(categoria=id_cat)
        dev = categoria.id
    else:
        productos = Producto.objects.all()
        dev = 'none'

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

def basket(request,step = False):
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

        try:
            basket = request.session['basket']
        except KeyError:
            basket = []

        cesta = []
        for row in basket:
            cesta.append( re.sub("([^0-9]+)", "", row) )

        # productos en la cesta
        productos = Producto.objects.filter(id__in=cesta)

        user = request.user
        profile = user.profile

        dev = 'dev'

        data = {"form": form,
               "user": user,
               "lista": productos,
               'profile': profile,
               "dev" : dev,
               'form':form
            }

        return render_to_response("checkout.html", context_instance=RequestContext(request,data))

    else:

        return HttpResponseRedirect("/accounts/login/")
    
    



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