from django.contrib import admin
from account.models import User
from django.contrib.auth.admin import UserAdmin

# Register your models here.

class AccountAdmin(UserAdmin):
    list_display = ('id','username', 'email', 'mobileNumber', 'date_joined', 'last_login', 'is_admin', 'is_staff', 'is_organizer')
    search_fields = ('username', 'email')
    readonly_fields = ('date_joined', 'last_login', 'is_admin', 'is_staff', 'is_superuser', 'is_organizer')

    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()

admin.site.register(User, AccountAdmin)
