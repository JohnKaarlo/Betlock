# Generated by Django 4.2.5 on 2024-01-26 04:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0004_blog_related_to'),
    ]

    operations = [
        migrations.AlterField(
            model_name='blog',
            name='image',
            field=models.ImageField(blank=True, default='Betlock.png', upload_to=''),
        ),
    ]
