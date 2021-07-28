from django.db import models

# Create your models here.
class HelloWorld(models.Model):
    text = models.CharField(max_length=255, null=False) # 해당 내용은 null 처리할 수 없다 !