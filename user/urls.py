from django.contrib import admin
from django.urls import path,include
from django.contrib.auth import views as auth_views
from .import views

urlpatterns = [
      path('register/', views.register, name='register'),
      path('',auth_views.LoginView.as_view(template_name='login.html'), name='user-login'),
      path('logout/',auth_views.LogoutView.as_view(template_name='logout.html'), name='user-logout'),
      path('profile',views.profile, name='profile'),
      path('profile_update',views.profile_update, name='profile_update'),
      path('change_password/',views.change_password, name='change_password'),
]
