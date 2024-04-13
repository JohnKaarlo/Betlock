from django.db import models
from django.contrib.auth import get_user_model

User = get_user_model()

class Transaction(models.Model):
    TRANSACTION_TYPE_CHOICES = (
        ('deposit', 'Deposit'),
        ('withdrawal', 'Withdrawal'),
        ('transfer', 'Transfer'),
    )
    TRANSACTION_STATUS_CHOICES = (
        ('pending', 'Pending'),
        ('completed', 'Completed'),
        ('cancelled', 'Cancelled'),
    )

    player = models.ForeignKey(User, on_delete=models.CASCADE)
    type = models.CharField(max_length=45, choices=TRANSACTION_TYPE_CHOICES)
    status = models.CharField(max_length=45, choices=TRANSACTION_STATUS_CHOICES, null=True, blank=True)
    amount = models.DecimalField(max_digits=10, decimal_places=5, null=True, blank=True)
    update_at = models.DateTimeField(auto_now=True, null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True, null=True, blank=True)
    currency = models.CharField(max_length=45, null=True, blank=True)

    def __str__(self):
        return f"{self.player.username} - {self.type} - {self.amount}"
