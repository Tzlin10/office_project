from django.db import models

# Create your models here.
class Message(models.Model):
    body = models.TextField(max_length=30)
    class Meta:
        verbose_name = ("Message")
        verbose_name_plural = ("Messages")
    def __str__(self):
        return self.body