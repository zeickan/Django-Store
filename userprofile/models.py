from django.db import models
from django.contrib.auth.models import User


class UserProfile(models.Model):
    user = models.OneToOneField(User)
    calle = models.CharField(max_length=200,blank=True,null=True)
    direccion = models.CharField(max_length=200,blank=True,null=True)
    cp = models.DecimalField(max_digits=5,decimal_places=0,blank=True,null=True)
    ciudad = models.CharField(max_length=100,blank=True,null=True)
    estado = models.CharField(max_length=100,blank=True,null=True)


User.profile = property(lambda u: UserProfile.objects.get_or_create(user=u)[0])
