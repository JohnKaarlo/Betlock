from django.contrib import admin
from payment.models import Withdraw

# Register your models here.

class WithdrawAdmin(admin.ModelAdmin):
    list_display = ('amount', 'requested_by', 'status', 'date')
    search_fields = ('requested_by', 'status')

    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()

admin.site.register(Withdraw, WithdrawAdmin)