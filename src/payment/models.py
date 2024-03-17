from django.db import models
from account.models import User

# Withdraw model
class Withdraw(models.Model):
    amount = models.FloatField()
    requested_by = models.ForeignKey(
        "account.User",
        on_delete=models.CASCADE,
        null=True,
    )
    email = models.EmailField(verbose_name="email", max_length=50, unique=False, blank=True)
    status_options = (
        ("Pending", "Pending"),
        ("Success", "Success"),
        ("Failed", "Failed"),
    )
    status = models.TextField(max_length=10, choices=status_options, default="Pending")
    date = models.DateTimeField(auto_now=True)
    
    def save(self, *args, **kwargs):
        if not self.email:
            user = User.objects.get(id=self.requested_by.id)
            self.email = user.email

        if self.status == "Failed":
            user = User.objects.get(id=self.requested_by.id)
            user.wallet += self.amount
            user.on_hold -= self.amount
            user.save()
        elif self.status == "Success":
            user = User.objects.get(id=self.requested_by.id)
            user.on_hold -= self.amount
            user.save()
        super().save(*args, **kwargs)