# Generated by Django 4.2.5 on 2023-11-29 07:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('game', '0011_game_is_done'),
    ]

    operations = [
        migrations.AddField(
            model_name='game',
            name='winner',
            field=models.CharField(choices=[(models.TextField(max_length=50, verbose_name='team a'), models.TextField(max_length=50, verbose_name='team a')), (models.TextField(max_length=50, verbose_name='team b'), models.TextField(max_length=50, verbose_name='team b')), ('TBD', 'TBD')], default='TBD', max_length=50),
        ),
    ]
