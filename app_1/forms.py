from django import forms
from django.contrib.auth import get_user_model, password_validation
from django.contrib.auth.forms import UserCreationForm
from app_1.models import MyModel


UserModel = get_user_model()


# class RegisterForm(UserCreationForm):
#     first_name = forms.CharField(max_length=255, label='FIRST NAME')
#     last_name = forms.CharField(max_length=255, label='LAST NAME')


class RegisterMyModel(forms.ModelForm):
    class Meta:
        model = MyModel
        #fields = ['first_name', 'last_name']
        #fields = '__all__'
        #exclude = ['sex']
        exclude = []


# class RegisterForm(forms.Form):
#
#     first_name = forms.CharField(max_length=255, label='FIRST NAME')
#     last_name = forms.CharField(max_length=255, label='LAST NAME')
#     email = forms.EmailField(label='EMAIL')
#     password = forms.CharField(widget=forms.PasswordInput, max_length=255, label='PASSWORD')
#     password_confirmation = forms.CharField(widget=forms.PasswordInput, max_length=255, label='PASWORD CONFIRMATION')
#
#     def clean_email(self):
#         email = self.cleaned_data['email']
#
#         is_valid_email = UserModel.objects.filter(email=email).count() == 0
#
#         if not is_valid_email:
#             raise forms.ValidationError('E-mail already taken')
#
#
#
#
#         return email
#
#     def clean_password(self):
#         password = self.cleaned_data['password']
#         password_validation.validate_password((password))
#
#         return password
#
#     def clean_password_confirmation(self):
#         password = self.cleaned_data.get('password', None)
#         password_confirmation = self.cleaned_data['password_confirmation']
#
#         if password != password_confirmation:
#             raise forms.ValidationError('Password mismatch')
#
#         return password_confirmation
#
#     def save(self):
#         first_name = self.cleaned_data['first_name']
#         last_name = self.cleaned_data['last_name']
#         email = self.cleaned_data['email']
#         password = self.cleaned_data['password']
#
#         UserModel.objects.create_user(
#             username=email,
#             email=email,
#             password=password,
#             first_name=first_name,
#             last_name=last_name
#         )




