from django.contrib import admin
from blog.models import Blog

# Register your models here.
class BlogAdmin(admin.ModelAdmin):
    list_display = ('id','title', 'author', 'date_posted')
    search_fields = ('title', 'content')

    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()

admin.site.register(Blog, BlogAdmin)