from django.db import models


class Category(models.Model):
    class Meta:
        verbose_name = 'Caategory'
        verbose_name_plural = 'Categories'

    name = models.CharField(max_length=255, unique=True)

    def __str__(self):
        return self.name


class Subcategory(models.Model):
    name = models.CharField(max_length=255, unique=True)
    # atribut de relatie cu Category
    category = models.ForeignKey(Category, on_delete=models.CASCADE)

    def __str__(self):
        return f'{self.name} [{self.category.name}]'






