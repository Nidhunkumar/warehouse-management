from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from .models import Product, Order
from .forms import ProductForm,OrderForm
from user.models import Profile
from django.contrib.auth.models import User
from django.contrib import messages


# Create your views here.
@login_required
def index(request):
    orders = Order.objects.all()
    products = Product.objects.all().order_by('name')
    if request.method == 'POST':
        form = OrderForm(request.POST)
        if form.is_valid():
            order = form.save(commit=False)
            order.staff = request.user
            order.save()
            return redirect('index')
    else:
     form = OrderForm()
    context = {'products': products, 'form': form, 'orders': orders}
    return render(request, 'index.html', context)
@login_required
def product_list(request):
    products = Product.objects.all().order_by('name')
    if request.method == 'POST':
        form = ProductForm(request.POST)
        if form.is_valid():
            form.save()
            product_name = form.cleaned_data.get('name')
            messages.success(request, f'{product_name} has been added')
            return redirect('product_list')
    else:
        form = ProductForm()
    context = {'products': products, 'form': form}
    return render(request, 'product_list.html', context)
@login_required
def product_delete(request, pk):
    product = Product.objects.get(id=pk)
    product.delete()
    product_name = product.name
    messages.success(request, f'{product_name} has been deleted')
    return redirect('product_list')
@login_required
def product_update(request, pk):
    product = Product.objects.get(id=pk)
    if request.method == 'POST':
        form = ProductForm(request.POST, instance=product)
        if form.is_valid():
            form.save()
            return redirect('product_list')
    else:
        form= ProductForm(instance=product)
    context = {'form': form}
    return render(request, 'product_update.html', context)
@login_required
def staff_list(request):
    staffs = User.objects.filter(is_superuser=False).order_by('username')
    context = {'staffs': staffs}
    return render(request, 'staff_list.html', context)
@login_required
def order_list(request):
    orders = Order.objects.all()
    context = {'orders': orders}
    return render(request, 'order_list.html', context)
@login_required
def staff_order_list(request):
    user_orders = Order.objects.filter(staff=request.user)
    context = {'user_orders':user_orders}
    return render(request, 'staff_order_list.html', context)
@login_required
def search(request):
    if request.method == 'POST':
        search_text = request.POST['search_text']
        products = Product.objects.filter(name__icontains=search_text)
        context = {'products': products}
        return render(request, 'search.html', context)
    else:
        return redirect('index')





