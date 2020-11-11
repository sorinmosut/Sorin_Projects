from django.http import HttpResponse


def default_view(request):
    return HttpResponse('default view')
