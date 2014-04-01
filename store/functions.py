import random
import string
import re

def random_generator(size=6 , chars=string.ascii_uppercase + string.digits):
    return ''.join(random.choice(chars) for x in range(size))



"""



def pruebas(request):

# Formulario

    if request.method == 'POST':
        form = ProPedidoForm(request.POST)
        if form.is_valid():
            form.save()
            #return HttpResponseRedirect('/debug/')
    else:
        form = ProPedidoForm()

    
# productos en la cesta
    try:
        basket = request.session['basket']
    except KeyError:
        basket = []

    cesta = []
    for row in basket:
        cesta.append( re.sub("([^0-9]+)", "", row) )

    productos = Producto.objects.filter(id__in=cesta)
# Obtenemos total y sumamos el envio
    sumar = []
    for items in productos:
        precio = Decimal(items.precio)
        sumar.append(precio)

    subtotal = sum(sumar)
    total = subtotal+199

# Usuario y perfil

    user = request.user
    profile = user.profile

# Datos extras
    paso = 'confirm'

    data = {
           "user": user,
           "lista": productos,
           'profile': profile,
           "subtotal" : subtotal,
           "total": total,
           "formula": form,
           "step" : paso
        }

    return render_to_response("test.html", context_instance=RequestContext(request,data))



"""