from django.contrib import admin
from bet.models import Bet

# Register your models here.

class BetAdmin(admin.ModelAdmin):
    list_display = ('id','amount', 'team', 'date')
    search_fields = ('team',)

    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()

admin.site.register(Bet, BetAdmin)