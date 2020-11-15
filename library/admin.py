from django.contrib import admin
from library.models.book import Book, PublishedBook
from library.models.category import Category, Subcategory
from library.models.publisher import Publisher


admin.site.site_title = 'Administration'
admin.site.site_header = 'Administration Zone'

@admin.register(Publisher)
class PublisherAdmin(admin.ModelAdmin):
    #exclude = ['user']

    def get_queryset(self, request):
        queryset = super().get_queryset(request)

        if request.user.is_superuser:
            return queryset

        return queryset.filter(user=request.user)

    def get_fields(self, request, obj=None):
        available_fields = super().get_fields(request,obj)

        if not request.user.is_superuser:
            available_fields.remove('user')

        return available_fields

    def save_model(self, request, obj, form, change):
        if not obj.pk:
            user = form.cleaned_data.get('user', None)
            # print('form.cleaned_data', form.cleaned_data)
            # print('user', user)
            # print('obj', obj)
            # print('obj.pk', obj.pk)
            # print('form', form)
            # print('request', request)

            if not user:
                user = request.user

            obj.user = user

        super().save_model(request, obj, form, change)


# sau

# class PublisherAdmin(admin.ModelAdmin):
#     pass

# sau

# admin.site.register(Publisher, PublisherAdmin)


@admin.register(PublishedBook)
class PublishedBookAdmin(admin.ModelAdmin):
    #
    def get_queryset(self, request):
        user = request.user
        queryset = super().get_queryset(request)

        if user.is_superuser:
            return queryset

        return queryset.filter(publisher__in=user.publisher_set.all())

    # metoda permite accesul unui user doar asupra publisher-urilor care ii apartin,
    # astfel la actiunea add-new-publishedbook o sa ii apara doar editurile pe care le controleaza acesta
    # metoda actioneaza pentru legaturile de tip foreignkey
    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if not request.user.is_superuser:
            if db_field.name == 'publisher':
                kwargs['queryset'] = Publisher.objects.filter(user=request.user)

        return super().formfield_for_foreignkey(db_field, request, **kwargs)
    # exista o metoda asemanatoare si pentru legaturile de tip many to many:
    # def formfield_for_manytomany(self, db_field, request, **kwargs):


# sau

# admin.site.register(PublishedBook)


# Register your models here.

admin.site.register(Book)
admin.site.register(Subcategory)
admin.site.register(Category)
