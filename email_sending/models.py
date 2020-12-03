from django.db import models
from django.conf import settings


# Create your models here.

class MailModel(models.Model):
    subject = models.CharField(max_length=255)
    message = models.CharField(max_length=255)
    from_mail = models.CharField(max_length=255)
    to_mail = models.CharField(max_length=255)
