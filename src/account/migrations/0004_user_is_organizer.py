# Generated by Django 4.2.5 on 2023-10-20 07:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0003_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='is_organizer',
            field=models.BooleanField(default=False),
        ),
    ]
