# Generated by Django 3.0.3 on 2020-11-12 21:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('library', '0002_auto_20201112_1949'),
    ]

    operations = [
        migrations.AlterField(
            model_name='publishedbook',
            name='supply',
            field=models.PositiveIntegerField(default=0),
        ),
    ]
