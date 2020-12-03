from django.urls import path
from . import views

app_name = 'email_sending'

urlpatterns = [
    path('', view=views.index),
    path('create_mail', views.HandleModel.as_view(), name='create_mail')
]

#path('login/', view=views.handle_login, name='login'),
