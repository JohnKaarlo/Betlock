from django.db import models
from django.contrib.auth.models import AbstractBaseUser,BaseUserManager

class MyUserManager(BaseUserManager):
    def create_user(self, username, email, mobileNumber, password=None):
        if not username:
            raise ValueError("Users must have a username!")
        if not email:
            raise ValueError("Users must have an email!")
        if not mobileNumber:
            raise ValueError("Users must have a mobile number!")
        
        user = self.model(
            username = username,
            email = self.normalize_email(email),
            mobileNumber = mobileNumber,
        )

        user.set_password(password)
        user.save(using=self._db)
        return user
    
    def create_superuser(self, username, email, mobileNumber, password):
        user = self.create_user(
            username = username,
            password = password,
            email = self.normalize_email(email),
            mobileNumber = mobileNumber,
        )
        user.is_admin = True
        user.is_staff = True
        user.is_superuser = True
        user.is_organizer = True
        user.save(using=self._db)
        return user

class User(AbstractBaseUser):
    username = models.CharField(max_length=50, unique=True)
    email = models.EmailField(verbose_name="email", max_length=50, unique=True)
    mobileNumber = models.CharField(verbose_name="mobile number", max_length=20, unique=True)
    wallet = models.FloatField(verbose_name="wallet", default=0)
    on_hold = models.FloatField(verbose_name="on_hold", default=0)
    date_joined = models.DateTimeField(verbose_name="date joined", auto_now_add=True)
    last_login = models.DateTimeField(verbose_name="last login", auto_now=True)
    is_admin = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)
    is_organizer = models.BooleanField(default=False)

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['email', 'mobileNumber',]

    objects = MyUserManager()

    def __str__(self):
        return self.username
    
    def has_perm(self, perm, obj=None):
        return self.is_admin
    
    def has_module_perms(self, app_label):
        return True
