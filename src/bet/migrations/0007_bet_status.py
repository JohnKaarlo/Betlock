# Generated by Django 4.2.5 on 2023-12-07 04:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bet', '0006_alter_bet_team'),
    ]

    operations = [
        migrations.AddField(
            model_name='bet',
            name='status',
            field=models.TextField(choices=[('Win', 'Win'), ('Lose', 'Lose'), ('TBD', 'TBD')], default='TBD', max_length=10),
        ),
    ]
