from django.db import models
from django.conf import settings


class Publisher(models.Model):
    name = models.CharField(max_length=255, unique=True)
    # owner-ul publicatiei
    # user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    # cu ForeignKey un publisher poate sa aiba atasate mai multe publicatii
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    # cu OneToOne este o restrictie ca unui user sa ii poata fi asociat un singur publisher

    def __str__(self):
        return f'{self.name}' # [{self.first_name} {self.last_name}]'