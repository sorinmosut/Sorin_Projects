import datetime
from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator
from library.models.category import Subcategory
from library.models.publisher import Publisher


now = datetime.datetime.now()
current_year = now.year


class Book(models.Model):
    title = models.CharField(max_length=255, unique=True)
    author = models.CharField(max_length=255)
    year = models.IntegerField(validators=[
        MinValueValidator(1700),
        MaxValueValidator(current_year)
    ])
    subcategory = models.ForeignKey(Subcategory, on_delete=models.CASCADE)
    # relatie intre Book si Publisher de tip ManyToMany prin modelul de legatura PublishedBook
    publisher = models.ManyToManyField(Publisher, through='PublishedBook', related_name='publishers')

    def __str__(self):
        return self.title


class PublishedBook(models.Model):
    # publisher relatie cu ForeignKey catre classa Publisher
    publisher = models.ForeignKey(Publisher, on_delete=models.CASCADE)
    # book relatie cu ForeignKey catre classa Book
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    # max_digits-numarul maxim de cifre din price , decimal_places-cate din max_digits sa fie dupa virgula ex. 9999.99
    price = models.DecimalField(max_digits=6, decimal_places=2)
    supply = models.PositiveIntegerField(default=0)

