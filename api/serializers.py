from abc import ABC

from django.contrib.auth import get_user_model
# from django.contrib.auth.models import Group
from rest_framework import serializers

UserModel = get_user_model()


# class UserSerializer(serializers.Serializer):
#
#     id = serializers.IntegerField()
#     first_name = serializers.CharField(max_length=255)
#     last_name = serializers.CharField(max_length=255)
#     email = serializers.EmailField()
#
#     def update(self, instance, validated_data):
#         pass
#
#     def create(self, validated_data):
#         pass


# class GroupSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Group
#         exclude = []


class UserSerializer(serializers.ModelSerializer):
    #  groups = GroupSerializer()

    class Meta:
        model = UserModel
        exclude = ['password']
        depht = 0


class RegisterSerializer(serializers.Serializer):
    first_name = serializers.CharField(required=False)
    last_name = serializers.CharField(required=False)
    email = serializers.EmailField(required=False)

    def validate(self, data):
        errors = {}

        first_name = data.get('first_name', None)
        if not first_name:
            errors['first_name'] = ['field required']

        last_name = data.get('last_name', None)
        if not last_name:
            errors['last_name'] = ['field required']

        if errors:
            raise serializers.ValidationError(errors)

        return data

    def create(self, validated_data):
        user = UserModel(
            username=validated_data['email'],
            email=validated_data['email'],
            first_name=validated_data['first_name'],
            last_name=validated_data['last_name']
        )
        user.save()

        return user
