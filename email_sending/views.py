import logging
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from django.urls import reverse

from django.shortcuts import render, reverse
from django.http import HttpResponse, HttpResponseRedirect
from django.views.generic import TemplateView
from django.contrib.auth.forms import UserCreationForm
from email_sending.forms import RegisterMailModel, MailModel
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.decorators import login_required
from datetime import datetime
from .tasks import send_email_task, add, show_date_time_task
from celery.utils.log import get_task_logger
from mail_templated import send_mail
from django.views.generic import CreateView


# add, sleepy

logger = logging.getLogger('django')
#logger = get_task_logger(__name__)


# Create your views here.
# def index(request):
#     #sum = add.delay(5, 6)
#     #sleepy.delay(5)
#     #send_email_task.delay()
#     return HttpResponse(f'<h1>Mail sent</h1>')


       # return HttpResponseRedirect(reverse('app1:profile'))

def index(request):

    result_sum = add.delay(x=10, y=20)
    #logger.info(f'SUM {result_sum.get()}')

    result_time = show_date_time_task.delay()
    #logger.info(f'NOW : {result_time.get()}')

    return HttpResponse(f'<h1>Mail Page</h1>\nNOW: {result_time.get()}\nSUM = {result_sum.get()}')

    #     render(request, 'email_sending/template.html', {
    #     'parameter_1': 'my parameter 1'
    # })

class HandleModel(TemplateView):
    template_name = 'app_1/email_2.html'

    def get(self, request):
        form = RegisterMailModel()
        all_data = MailModel.objects.all()
        return render(request, 'app_1/send_mail.html', {
            'form': form,
            'all_data': all_data
        })

    def post(self, request):
        #global logger

        form = RegisterMailModel(request.POST)
        all_data = MailModel.objects.all()
        #print('request', request.POST)
        subject = request.POST['subject']
        message = request.POST['message']
        from_mail = request.POST['from_mail']
        to_mail = request.POST['to_mail']
        #file_s = Share.objects.filter(shared_user_id=log_id).values_list('files_id', flat=True).order_by('id')
        #subject = MailModel.objects.get('subject')
        #print('all_data', all_data)
        logger.info(f'{subject} - {message} - {from_mail} - {to_mail}')
        #send_email_task(subject, message, from_mail, to_mail)


        if form.is_valid():
            form.save()

            #send_mail(self.template_name, context_dict, from_mail, [to_mail])

            send_email_task.delay(subject=subject, message=message, from_mail=from_mail,
                                  to_mail=to_mail, template=self.template_name)
            return HttpResponseRedirect(reverse('email_sending:create_mail'))


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

        return render(request, 'app_1/send_mail.html', {
            'form': form,
            'all_data': all_data
        })

