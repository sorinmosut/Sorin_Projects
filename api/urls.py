from api.views import UserViewSet, RegisterViewSet
from django.urls import path, include
from rest_framework.routers import DefaultRouter

router = DefaultRouter()
# folosim regular expresion pentru ca metodele vor fi /users/ sau /user/5/
# numele resursei va fi 'users' de acum incolo
router.register(r'users/register', RegisterViewSet, basename='register')  # se va scrie in fata "users"
router.register(r'users', UserViewSet)  # , basename='users')

urlpatterns = [
    path('', include(router.urls)),
    path('api-auth/', include('rest_framework.urls')),
]
