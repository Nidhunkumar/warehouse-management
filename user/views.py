from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm
from .forms import UserRegisterForm,ProfileUpdateForm,UserUpdateForm
from .models import Profile
from django.contrib import messages
from django.contrib.auth import update_session_auth_hash
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth.decorators import login_required



# Create your views here.
def register(request):
    if request.method == "POST":
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'Account created for {username} please login')
            return redirect('user-login')

    else:
        print("erzzzrr")
        form = UserRegisterForm()
        
    context = {'form': form}
    return render(request, 'register.html', context)
@login_required
def profile(request):
    data=Profile.objects.get(staff__id=request.user.id)
    context={'data':data}
    return render(request,'profile.html',context)
@login_required
def profile_update(request):
    if request.method == "POST":
        user_form = UserUpdateForm(request.POST, instance=request.user)
        profile_form = ProfileUpdateForm(request.POST,request.FILES,instance=request.user.profile)
        if user_form.is_valid() and profile_form.is_valid():
            user_form.save()
            profile_form.save()
            return redirect('profile')
    else:
        user_form = UserUpdateForm(instance=request.user)
        profile_form = ProfileUpdateForm(instance=request.user.profile)


    context = {'profile_form': profile_form, 'user_form': user_form}
    return render(request, 'profile_update.html', context)
@login_required
def change_password(request):
    if request.method == 'POST':
        form = PasswordChangeForm(request.user, request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)
            messages.success(request, 'Your password was successfully updated!')
            return redirect('user-login')
        else:
            messages.error(request, 'Please correct the error below.')
    else:
        form = PasswordChangeForm(request.user)
    return render(request, 'change_password.html', {'form': form})
    




