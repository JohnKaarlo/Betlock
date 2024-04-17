from django.db import models
from django.utils.text import slugify

#Create your models here.
class Game(models.Model):
    team_A = models.TextField(max_length=50, verbose_name="team a")
    team_B = models.TextField(max_length=50, verbose_name="team b")
    info_A = models.TextField(max_length=1000, verbose_name="team a info")
    info_B = models.TextField(max_length=1000, verbose_name="team b info")
    logo_A = models.ImageField(default='default.jpg', blank=True)
    logo_B = models.ImageField(default='default.jpg', blank=True)
    is_local = models.BooleanField(default=False)
    is_done = models.BooleanField(default=False)
    slug = models.SlugField(max_length=250,null=True,unique=True,blank=True)
    date_created = models.DateTimeField(verbose_name="date created",auto_now_add=True,editable=False)
    date = models.DateTimeField(editable=True)
    organizer = models.ForeignKey(
        "account.User",
        on_delete=models.CASCADE,
        null=True,
    )
    winner = models.CharField(max_length=50, default="TBD")
    game_winner = models.ForeignKey(
        "game.Game_Winner",
        on_delete=models.CASCADE,
        null=True,
    )
    series_options = (
        ("Best of 1", "Best of 1"),
        ("Best of 2", "Best of 2"),
        ("Best of 3", "Best of 3"),
        ("Best of 5", "Best of 5"),
        ("Best of 7", "Best of 7"),
    )
    series_type = models.TextField(max_length=10, choices=series_options, default="Best of 1")
    max_bet = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    min_bet = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    fee = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)

    def __str__(self):
        return self.team_A + ' vs ' + self.team_B
    
    def save(self, *args, **kwargs):
        if not self.slug:
            link = self.team_A + " vs " + self.team_B
            self.slug = slugify(link)
        super().save(*args, **kwargs)

class Game_Winner(models.Model):
    team_options = (
        ("TBD", "TBD"),
        ("Team_A", "Team_A"),
        ("Team_B", "Team_B"),
    )
    game_1 = models.TextField(max_length=10, choices=team_options, default="TBD")
    game_2 = models.TextField(max_length=10, choices=team_options, default="TBD")
    game_3 = models.TextField(max_length=10, choices=team_options, default="TBD")
    game_4 = models.TextField(max_length=10, choices=team_options, default="TBD")
    game_5 = models.TextField(max_length=10, choices=team_options, default="TBD")
    game_6 = models.TextField(max_length=10, choices=team_options, default="TBD")
    game_7 = models.TextField(max_length=10, choices=team_options, default="TBD")