from django.contrib import admin
from game.models import Game

# Register your models here.

class GameAdmin(admin.ModelAdmin):
    list_display = ('id','team_A', 'team_B', 'organizer', 'date_created', 'date', 'is_local')
    search_fields = ('team_A', 'team_B')

    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()

admin.site.register(Game, GameAdmin)