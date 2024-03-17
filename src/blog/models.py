from django.db import models
from django.utils.text import slugify

# Create your models here.
class Blog(models.Model):
    title = models.TextField(max_length=100)
    content = models.TextField(max_length=3000)
    image = models.ImageField(blank=True)
    author = models.ForeignKey(
        "account.User",
        on_delete=models.CASCADE,
        null=True,
    )
    related_to = models.ForeignKey(
        "game.Game",
        on_delete=models.CASCADE,
        null=True,
        blank=True,
    )
    date_posted = models.DateTimeField(auto_now_add=True, verbose_name="date posted")
    slug = models.SlugField(max_length=250,null=True,unique=True,blank=True)

    def __str__(self):
        return self.title
    
    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.title)
        super().save(*args, **kwargs)