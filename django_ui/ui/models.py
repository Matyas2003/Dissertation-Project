from django.db import models
from django.contrib.auth.models import AbstractUser, Group, Permission


class User(AbstractUser):
    class Role(models.TextChoices):
        REGULAR = "Regular", 'Regular'
        ADMIN = "Admin", 'Admin'

    role = models.CharField(max_length=30, choices=Role.choices, default=Role.REGULAR)
    email = models.CharField(max_length=60, blank=True, null=True, default="Email")
    user_name = models.CharField(max_length=30, blank=True, null=True, default="UserName")
    password = models.CharField(max_length=60, blank=True, null=True, default="")


class File(models.Model):
    class Type(models.TextChoices):
        VIDEO = "video", "mp4"
        AUDIO = "audio", "wav"
    name = models.CharField(max_length=255, blank=True, null=True, default="FileName")
    file_path = models.CharField(max_length=255, blank=True, null=True, default="FilePath")
    file_type = models.CharField(max_length=10, choices=Type.choices, default=Type.VIDEO)  # e.g., "video", "audio"
    upload_date = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name
