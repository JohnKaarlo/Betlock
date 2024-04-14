"""
URL configuration for mysite project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls.static import static
from django.conf import settings

from Services.Cashiers.cashiers import create_transaction
from personal.views import (
    login_view,
    signup_view,
    forget_view,
    forget_otp,
    forget_set_pass,
    profile_view,
    logout_user,
    wallet_view,
    withdraw,
    deposit,
    send_view,
    lobby_view,
    update_view,
    update_user,
    update_password_view,
    update_password,
    blog_view,
    send,
    game_view,
    add_game,
    bet_view,
    bet,
    winner,
    blog_detail,
    add_blog_view,
    add_blog,
    withdraw_user,
    admin_view,
    organizer_signup,
    admin_signup,
)

from payment.views import (
    create_payment,
    execute_payment,
    payment_failed,
)

urlpatterns = [
    path('admin', admin_view),
    path('', login_view),
    path('signup', signup_view),
    path('organizer_signup', organizer_signup, name="organizer/signup"),
    path('admin_signup', admin_signup, name="admin/signup"),
    path('forgotpassword', forget_view),
    path('forgotpassword_otp', forget_otp),
    path('forgotpassword_setnew', forget_set_pass),
    path('profile', profile_view),
    path('logout', logout_user),
    path('wallet', wallet_view),
    path('withdraw', withdraw),
    path('withdraw_user', withdraw_user),
    path('deposit', deposit),
    path('create_payment', create_payment, name='create_payment'),
    path('execute_payment', execute_payment, name='execute_payment'),
    path('payment_failed', payment_failed, name='payment_failed'),
    path('send', send_view),
    path('send_user', send),
    path('lobby', lobby_view),
    path('update', update_view),
    path('update_user', update_user),
    path('update_password', update_password_view),
    path('update_password_user', update_password),
    path('blog', blog_view),
    path('blog-<slug>', blog_detail, name = "blog-detail"),
    path('<slug>-add-blog-form', add_blog_view, name = "add-blog-form"),
    path('<slug>-add-blog', add_blog, name = "add-blog"),
    path('add_game', add_game, name='add_game'),
    path('<slug>-bet-placed', bet, name = "bet-placed"),
    path('<slug>-bet', bet_view, name = "bet"),
    path('<slug>-winner', winner, name="winner"),
    path('<slug>', game_view, name="game"),
    path('cashiers/create_transaction/', create_transaction, name='create_transaction'),
]

urlpatterns += static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)