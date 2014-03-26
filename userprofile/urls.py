from django.conf.urls import patterns, include, url

urlpatterns = patterns('',
	url(r'^profile/$', 'userprofile.views.userprofile'),
	url(r'^profile/changeProfile/$', 'userprofile.views.changeprofile'),
	url(r'^profile/(?P<action>\w{0,50})$','userprofile.views.userprofile'),



)