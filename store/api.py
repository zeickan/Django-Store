# -*- coding: utf-8 -*-


from django.http import HttpResponse, HttpRequest, QueryDict, HttpResponseRedirect
import json
import conekta


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

          
    """
    response_data = {}
    response_data['result'] = status
    response_data['message'] = msg

    callback = request.GET.get('callback', '')
    response = json.dumps(response_data)    
    response = callback + '(' + response + ');'    

    return HttpResponse(response,content_type="application/json")
    """
    return HttpResponseRedirect("/store/checkout/")


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



import pprint


def conektaio(request):

    conekta.api_key = 'key_hq25ksDD9j3Gyag4'

    data = {
        "description": "Pedido # 123",
        "amount": 25050,
        "currency": "MXN",
        "reference_id": "red_3215_0001",
        "cash": {
            "type": "oxxo"
        },
        "details": {
            "name": "Wolverine",
            "email": "logan.thomas@xmen.org",
            "phone": "403-342-0642"
        }
    }


    charge = conekta.Charge.create(data)


    response = charge.payment_method['barcode_url']




    return HttpResponse(response,content_type="application/json")



#### END API