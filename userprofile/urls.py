from django.conf.urls import patterns, include, url

from django.contrib.auth import views as auth_views


urlpatterns = patterns('',
	url(r'^profile/$', 'userprofile.views.userprofile'),
	url(r'^profile/changeProfile/$', 'userprofile.views.changeprofile'),
	url(r'^profile/changeInformation/$', 'userprofile.views.changeinfo'),
	url(r'^profile/billingAddress/$', 'userprofile.views.changebilling'),
	url(r'^profile/shippingAddress/$', 'userprofile.views.changeshipping'),

	#url(r'^profile/password/$', 'userprofile.password_change' ),

	url(r'^profile/(?P<action>\w{0,50})$','userprofile.views.userprofile'),

	url(r'^passreset/$',auth_views.password_reset,name='forgot_password1'),
	url(r'^passresetdone/$',auth_views.password_reset_done,name='forgot_password2'),
	url(r'^passresetconfirm/(?P<uidb36>[-\w]+)/(?P<token>[-\w]+)/$',auth_views.password_reset_confirm,name='forgot_password3'),
	url(r'^passresetcomplete/$',auth_views.password_reset_complete,name='forgot_password4'),

	url(r'^password/change/$', auth_views.password_change,  name='auth_password_change'),
	url(r'^password/change/done/$', auth_views.password_change_done, name='auth_password_change_done'),


)