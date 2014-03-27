# Create your views here.

from django.shortcuts import render_to_response
from django.http import HttpResponseRedirect
from django.core.context_processors import csrf
from django.contrib.auth.decorators import login_required




from forms import *


@login_required
def userprofile(request,action = False):

    if request.method == 'POST':
        form = UserProfileForm(request.POST, instance=request.user.profile)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/accounts/profile/')
    else:
        user = request.user
        profile = user.profile
        #form = UserProfileForm(instance=profile)
    
    args = { "user": user, "profile": profile }

    return render_to_response('registration/profile_base.html',args)

@login_required
def changeinfo(request,action = False):

    if request.method == 'POST':
        form = UserInformation(request.POST, instance=request.user)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/accounts/profile/')
    else:
        user = request.user
        form = UserInformation(instance=user)

    args = { "user": user , 'save':'changeInformation/' }
    args.update(csrf(request))
    args['form'] = form
    return render_to_response('registration/form_profile.html',args)



@login_required
def changeprofile(request,action = False):

    user = request.user
    profile = user.profile
    form = UserProfileForm(instance=profile)

    args = { "user": user , 'save':'save' }
    args.update(csrf(request))
    args['form'] = form
    return render_to_response('registration/form_profile.html',args)


@login_required
def changebilling(request,action = False):

    user = request.user
    profile = user.profile
    form = UserProfileForm(instance=profile)

    args = { "user": user , 'save':'save' }
    args.update(csrf(request))
    args['form'] = form
    return render_to_response('registration/form_profile.html',args)

@login_required
def changeshipping(request,action = False):

    if request.method == 'POST':
        form = UserShippingAddress(request.POST, instance=request.user.profile)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/accounts/profile/')
    else:
        user = request.user
        profile = user.profile
        form = UserShippingAddress(instance=profile)

    args = { "user": user , 'save':'shippingAddress/' }
    args.update(csrf(request))
    args['form'] = form
    return render_to_response('registration/form_profile.html',args)

