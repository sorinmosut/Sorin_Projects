import os
from django.conf import settings
from celery import Celery
from celery.schedules import crontab

# set the default Django settings module for the 'celery' program
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'first_site.settings')

# se creaza o noua instanta Celery numita app
app = Celery('first_site')

# Using a string here means the worker doesn't have to serialize
# the configuration object to child processes.
# - namespace='CELERY' means all celery-related configuration keys
#   should have a `CELERY_` prefix.
app.config_from_object('django.conf:settings', namespace='CELERY')

app.conf.beat_schedule = {
    'show_data_time_task': {
            'task': 'email_sending.tasks.show_date_time_task',
            'schedule': 5, #crontab(minute='*/5'), #sonar, long , lat ,
           #'options': {'queue': 'time'},
        },
    'add': {
            'task': 'email_sending.tasks.add',
            'schedule': 5, #crontab(minute='*/5'), #sonar, long , lat ,
            'args': (30, 20)
           #'options': {'queue': 'add'},
        },
    }

# Load task modules from all registered Django app configs.
app.autodiscover_tasks()


@app.task(bind=True)
def debug_task(self):
    print(f'Request: {self.request!r}')




#class Config:
    #pass

    #timezone = 'Europe/London'
    #broker_url = settings.CELERY_BROKER_URL
    #timezone = 'UTC'
    # task_default_queue = settings.CELERY_DEFAULT_QUEUE
    # task_default_exchange = settings.CELERY_DEFAULT_EXCHANGE
    # task_default_routing_key = settings.CELERY_DEFAULT_ROUTING_KEY
#
#     task_queues = {
#
#         'default': {
#             'exchange': 'default',
#             'binding_key': 'default',
#         },
#         'alarms': {
#             'exchange': 'alarms',
#             'binding_key': 'alarms',
#         }
#     }
#
#     beat_schedule = {
#         # 'show_data_time_task': {
#         #     'task': 'email_sending.tasks.show_data_time_task',
#         #     'schedule': 5, #crontab(minute='*/5'), #sonar, long , lat ,
#         #     'options': {'queue': 'time'},
#         # },
#     #     'add': {
#     #         'task': 'email_sending.tasks.delay',
#     #         'schedule': 5, #crontab(minute='*/5'), #sonar, long , lat ,
#     #         'options': {'queue': 'add'},
#     #     },
#     }
#
#app.config_from_object(Config)
