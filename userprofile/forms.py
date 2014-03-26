from django import forms
from models import UserProfile
from django.forms import Textarea

class UserProfileForm(forms.ModelForm):

    class Meta:
        model = UserProfile
        fields = ('calle','direccion','cp','ciudad','estado',"telefono")
        widgets = {
            #'direccion': Textarea(attrs={'cols': 80, 'rows': 20}),
        }
