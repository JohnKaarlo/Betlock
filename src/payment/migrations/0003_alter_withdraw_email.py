# Generated by Django 4.2.5 on 2024-03-14 07:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('payment', '0002_withdraw_email'),
    ]

    operations = [
        migrations.AlterField(
            model_name='withdraw',
            name='email',
            field=models.EmailField(blank=True, max_length=50, verbose_name='email'),
        ),
    ]
