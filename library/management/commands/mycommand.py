from django.core.management.base import BaseCommand

# class name is compulsory 'Command'
class Command(BaseCommand):
    help = 'What this command do'

    # adugare parametrii
    def add_arguments(self, parser):
        # # positional arg
        # # ex. call in terminal: python manage.py mycommand -my_arg=25
        # parser.add_argument('my_arg', default='this is my arg')

        # # optional arg
        # parser.add_argument('-my_arg', default='this is my arg')

        # # default=None
        # parser.add_argument('-my_arg')

        # shortway
        # # ex. call in terminal: python manage.py mycommand -ma=25
        parser.add_argument('-my_arg', '-ma')

    # metoda prin care se ruleaza codul comenzii
    def handle(self, *args, **options):
        my_arg = options.get('my_arg')
        print(f'my command from library app {my_arg}')