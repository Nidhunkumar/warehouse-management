from django.db import models
from django.contrib.auth.models import User

# Create your models here.
CATEGORY_CHOICES = (('electronics', 'Electronics'), ('clothing', 'Clothing'), ('books', 'Books'), ('other', 'Other'))

class Product(models.Model):
    name = models.CharField(max_length=255)
    quantity = models.PositiveIntegerField()
    category = models.CharField(max_length=20 , choices=CATEGORY_CHOICES)
    def __str__(self):
        return self.name
class Order(models.Model):
    staff = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    order_quantity = models.PositiveIntegerField()
    order_date = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.staff.username