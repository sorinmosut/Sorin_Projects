#

from rest_framework import viewsets, status
from rest_framework.response import Response
from api.serializers import UserSerializer, RegisterSerializer
# django permite customizarea userului default
from django.contrib.auth import get_user_model
from django.shortcuts import get_object_or_404

from django.conf import settings

# settings.AUTH_USER_MODEL -> numele modelului

UserModel = get_user_model()  # metoda returneaza clasa care reprezinta modelul nostru de user


# class UserViewSet(viewsets.ViewSet):
#
#     def list(self, request):
#         queryset = UserModel.objects.all() # preluam toti userii pe metoda de list
#         serializer = UserSerializer(queryset, many=True) # instantiem classa UserSerializer pentru datele preluate pe queryset
#                                                         # many=True pentru a obtine mai multe rezultate
#         return Response(serializer.data, status=status.HTTP_200_OK) # returnam datele pe serializer.data
#
#     def retrieve(self, request, pk=None):
#         queryset = UserModel.objects.all() # preluam toti userii pe metoda de list
#
#         user = get_object_or_404(queryset, pk=pk) # se preia userul cu pk = id
#         serializer = UserSerializer(instance=user)
#         return Response(serializer.data)


class UserViewSet(viewsets.ModelViewSet):
    queryset = UserModel.objects.all()
    serializer_class = UserSerializer


class RegisterViewSet(viewsets.ViewSet):

    def create(self, request):
        serializer = RegisterSerializer(data=request.GET)

        if serializer.is_valid():
            user = serializer.create(serializer.data)
            user_serializer = UserSerializer(user)

            return Response({
                'user': user_serializer.data
            })

        return Response({
            'errors': serializer.errors
        }, status=status.HTTP_404_NOT_FOUND)
