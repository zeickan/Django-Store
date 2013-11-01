# -*- encoding: utf-8 -*-


from store.models import *
from django.http import HttpResponse, HttpRequest, QueryDict
import json



### PETICIONES API PARA EL CARRITO


def delBasket(request):
    
    id = str(request.GET.get('id'))
    
    if request.GET.get('id'):
        liston = request.session['basket']
        
        if id in liston:
            liston.remove(id)
            request.session['basket'] = liston
            msg = 'Success'
            status = 'ok'
        else:
            msg = 'Error: Product not found in basket'
            status = 'failed'
        
    else:
        msg = "Success"
        status = 'ok'
        try:
            del request.session['basket']
        except KeyError:
            msg = 'Error: Cant delete basket'
            status = 'failed'

          
        
    response_data = {}
    response_data['result'] = status
    response_data['message'] = msg

    callback = request.GET.get('callback', '')
    response = json.dumps(response_data)    
    response = callback + '(' + response + ');'    

    return HttpResponse(response,content_type="application/json")


def setBasket(request):
    
    id = str(request.GET.get('id'))
    
    if id.isdigit():
        
        
        if request.session.get('basket',False):
            # Se ha definido anteriormente
            liston = request.session['basket']
            
            if id in liston:
                msg = 'Error: product already exists'
                status = 'failed'
            else:
                liston.append(id)
                request.session['basket'] = liston
                msg = 'Success'
                status = 'ok'
            
        else:
            # No se ha definido
            msg = 'Success'
            status = 'ok'
            request.session['basket'] = [id]
    
    else:
        msg = 'Error en la peticion'
        status = 'failed'

    response_data = {}
    response_data['result'] = status
    response_data['message'] = msg
    
    callback = request.GET.get('callback', '')
    response = json.dumps(response_data)    
    response = callback + '(' + response + ');'    

    return HttpResponse(response,content_type="application/json")

#### END API