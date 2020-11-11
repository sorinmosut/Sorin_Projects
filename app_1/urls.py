from django.urls import path
from . import views

app_name = 'app1'

urlpatterns = [
   path('', view=views.index),
   path('custom_route/<int:int_param>/', view=views.custom_route),
   path('users', view=views.HandleModel.as_view(), name='users_route'),
   path('login/', view=views.handle_login, name='login'),
   path('profile/', view=views.profile, name='profile'),
   path('logout/', view=views.handle_logout, name='logout'),
   path('dummy/', view=views.dummy, name='dummy')
]
