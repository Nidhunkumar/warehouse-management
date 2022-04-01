from django.contrib import admin
from django.urls import path,include
from .import views
from user import views as user_views

urlpatterns = [
   
    path('index', views.index, name='index'),
    path('product_list', views.product_list, name='product_list'),
    path('product_delete/<int:pk>', views.product_delete, name='product_delete'),
    path('product_update/<int:pk>', views.product_update, name='product_update'),
    path('staff_list', views.staff_list, name='staff_list'),
    path('order_list', views.order_list, name='order_list'),
    path('staff_order_list', views.staff_order_list, name='staff_order_list'),
    path('search', views.search, name='search'),

   

]
