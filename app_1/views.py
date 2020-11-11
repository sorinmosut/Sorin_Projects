from django.shortcuts import render, reverse
from django.http import HttpResponse, HttpResponseRedirect
from app_1.models import MyModel
from django.views.generic import TemplateView
from django.contrib.auth.forms import UserCreationForm
from app_1.forms import RegisterMyModel
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.decorators import login_required


def index(request):
    return render(request, 'app_1/template.html', {
        'parameter_1': 'my parameter 1'
    })


def custom_route(request, int_param):
    return HttpResponse(f'custom_route {int_param}')


class HandleModel(TemplateView):
    def get(self, request):
        form = RegisterMyModel()
        return render(request, 'app_1/list.html', {
            'form': form
        })

    def post(self, request):
        form = RegisterMyModel(request.POST)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect(reverse('app1:users_route'))

        # first_name = request.POST['first_name']
        # last_name = request.POST['last_name']
        # sex = request.POST['sex']
        # age = request.POST['age']

        # my_model = MyModel()
        # my_model.first_name = first_name
        # my_model.last_name = last_name
        # my_model.sex = sex
        # my_model.age = age
        # my_model.save()
        #
        # my_model = MyModel(first_name=first_name, last_name=last_name)
        # my_model.save()

        # print('request.POST data', request.POST)
        # return HttpResponseRedirect(reverse('app1:users_route'))

        return render(request, 'app_1/list.html', {
            'form': form
        })


def handle_login(request):
    if request.user.is_authenticated:
        return HttpResponseRedirect(reverse('app1:profile'))

    if request.method == 'POST':
        # handle login
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)

            next_url = request.GET.get('next')
            if next_url:
                return HttpResponseRedirect(next_url)

            return HttpResponseRedirect(reverse('app1:profile'))

        else:
            return render(request, 'app_1/invalid_usr_pass.html', {})

    return render(request, 'app_1/login.html', {})


@login_required
def profile(request):
    # if request.user.is_authenticated:
    #     return render(request, 'app_1/profile.html')
    return render (request, 'app_1/profile.html')


def handle_logout(request):
    logout(request)
    return HttpResponseRedirect(reverse('app1:login'))


@login_required
def dummy(request):
    return HttpResponse('dummy view')
