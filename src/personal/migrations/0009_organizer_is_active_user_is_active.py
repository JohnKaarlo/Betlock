# Generated by Django 4.2.5 on 2023-10-18 05:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('personal', '0008_rename_email_organizer_org_email_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='organizer',
            name='is_active',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='user',
            name='is_active',
            field=models.BooleanField(default=True),
        ),
    ]
