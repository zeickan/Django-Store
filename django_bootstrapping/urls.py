from django.conf.urls import patterns, include, url
from django.views.generic import TemplateView
from django.conf import settings
from django.conf.urls.static import static



# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()


urlpatterns = patterns('',
    # Examples:
    url(r'^$', 'store.views.principal', name='home'),
    
    url(r'^basket/$', 'store.views.basket', name='basket'),

    url(r'^basket/ipn$', 'store.views.ipn', name='ipn'),

    (r'^basket/request/ipn/notify/', include('paypal.standard.ipn.urls')),
    
    #url(r'^payment\.html$', 'store.views.payment', name='payment'),
    #url(r'^confirmation\.html$', 'store.views.confirmation', name='confirmation'),
    
    #url(r'^payment-url/$', 'store.views.buy_my_item'),
    #url(r'^some/obscure/name/', include('paypal.standard.ipn.urls')),
    # url(r'^django_bootstrapping/', include('django_bootstrapping.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    url(r'^humans\.txt$', 'humano.views.genTextFile', name='humanstxt' ),

    (r'^tinymce/', include('tinymce.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)