from django.db import models

# Create your models here.
class Bet(models.Model):
    amount = models.FloatField()
    bettor = models.ForeignKey(
        "account.User",
        on_delete=models.CASCADE,
        null=True,
    )
    game = models.ForeignKey(
        "game.Game",
        on_delete=models.CASCADE,
        null=True,
    )
    status_options = (
        ("Win", "Win"),
        ("Lose", "Lose"),
        ("TBD", "TBD"),
    )
    status = models.TextField(max_length=10, choices=status_options, default="TBD")
    options = (
        ("Team A", "Team A"),
        ("Team B", "Team B"),
    )
    team = models.TextField(max_length=10, choices=options)
    date = models.DateTimeField(auto_now=True)
    