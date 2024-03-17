# Generated by Django 4.2.5 on 2023-12-08 08:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bet', '0009_alter_bet_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bet',
            name='status',
            field=models.TextField(choices=[('Win', 'Win'), ('Lose', 'Lose'), ('TBD', 'TBD')], default='TBD', max_length=10),
        ),
    ]
