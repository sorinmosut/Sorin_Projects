import logging
from datetime import datetime
from celery import shared_task
#from django.core.mail import send_mail
from celery.utils.log import get_task_logger
from time import sleep
from mail_templated import send_mail


logger = get_task_logger('django')


@shared_task
def show_date_time_task():
    now = datetime.now().strftime("%D - %H:%M:%S")
    logger.info(f'\nNOW : {now}')
    return now

@shared_task
def add(x, y):
    logger.info(f'\nSum = {x + y}')
    return x + y

@shared_task
def send_email_task(subject, message, from_mail, to_mail, template):

    from_email = from_mail
    user_mail = to_mail
    context_dict = {
        'title': subject,
        'message': message,
    }

    send_mail(template, context_dict, from_email, [user_mail])
    # email_sending/tmplates/email_sending/email_2.html

    # mail = send_mail(
    #     subject=subject,
    #     message=message,
    #     from_email=from_mail,
    #     recipient_list=[to_mail]
    # )
    # if mail == 1:
    #      logger.info(f'\nMail sent!\nSUBJECT: {subject}\nMESSAGE: {message}\nSENDER: {from_mail}\nRECIVER: {to_mail}')
    return None
#onofre@yiustrange.com









# @shared_task
# def create_random_user_accounts(total):
#     for i in range(total):
#         username = 'user_{}'.format(get_random_string(10, string.ascii_letters))
#         email = '{}@example.com'.format(username)
#         password = get_random_string(50)
#         User.objects.create_user(username=username, email=email, password=password)
#     return '{} random users created with success!'.format(total)

