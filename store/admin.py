# -*- encoding: utf-8 -*-

from django.contrib import admin 
from django import forms

from store.models import *



# Producto
"""

class CategoriaForm(forms.ModelForm):
    inherit = forms.ModelChoiceField(queryset=Categoria.objects.order_by('nombre'))

    class Meta:
        model = Categoria
"""

class CategoriaAdmin(admin.ModelAdmin):
    list_display = ('nombre','slug')
    prepopulated_fields = {"slug": ("nombre",)}
    search_fields = ('nombre',)
admin.site.register(Categoria,CategoriaAdmin)

"""
class CategoriaAdmin(admin.ModelAdmin):
	list_display = ('nombre',)
	search_fields = ('nombre',)
	#radio_fields = {"active": admin.VERTICAL}
	#form = CategoriaForm

class SubcategoriaAdmin(admin.ModelAdmin):
	list_display = ('nombre','categoria')
	list_filter  = ('categoria',)


admin.site.register(Categoria,CategoriaAdmin)
admin.site.register(Subcategoria,SubcategoriaAdmin)
"""


admin.site.register(Colores)

class ProductoAdmin(admin.ModelAdmin):
    list_display = ('nombre','categoria','dig_colores')
    list_filter = ('categoria',)

admin.site.register(Producto,ProductoAdmin)


class PedidoAdmin(admin.ModelAdmin):
    list_display = ('comprador','paid')

admin.site.register(Pedido,PedidoAdmin)

"""

class MedidasAdmin(admin.StackedInline):
	model = Medidas
	extra = 2

class ProductoForm(forms.ModelForm):
    categoria = forms.ModelChoiceField(queryset=categoria.objects.order_by('nombre'))

    class Meta:
        model = Producto

class ProductoAdmin(admin.ModelAdmin):
	list_display = ('nombre','categoria')
	list_filter  = ('categoria',)
	search_fields = ('nombre','categoria','description')
	fieldsets = [
				(None, {'fields':['nombre','categoria','imagen','description']}),
				('Avanzado',{
					'classes': ['collapse',],
					'fields':['norma','ventaja','ficha']
					})
				]
	inlines = [MedidasAdmin]
	form = ProductoForm
admin.site.register(Producto,ProductoAdmin)



admin.site.register(categoria,CategoriaAdmin)
admin.site.register(Norma)

class AdjuntoAdmin(admin.ModelAdmin):
	list_display = ('nombre','docfile')
admin.site.register(Adjunto,AdjuntoAdmin)

class FotoAdmin(admin.ModelAdmin):
	list_display = ('nombre','foto')
admin.site.register(Foto,FotoAdmin)
"""

"""
admin.site.register(User)
admin.site.register(Profile)
admin.site.register(Choices)
"""

