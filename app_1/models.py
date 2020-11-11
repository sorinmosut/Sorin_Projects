from django.db import models
from django.conf import settings


# Create your models here.
class MyModel(models.Model):
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    sex = models.CharField(default='N/A', max_length=1)
    age = models.IntegerField(default=0)

    def __str__(self):
        return f'{self.first_name} - {self.last_name}'


class OtherRoles(models.Model):
    user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    is_owner = models.BooleanField(default=False)
    has_rank = models.BooleanField(default=False)
