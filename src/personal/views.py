from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth import authenticate,get_user, login, logout, update_session_auth_hash
from account.models import User
from game.models import Game
from bet.models import Bet
from blog.models import Blog
from payment.models import Withdraw
from django.contrib.auth.password_validation import validate_password, password_validators_help_text_html
from django.contrib.auth.hashers import make_password
from django.contrib.auth.decorators import login_required
from django.core.mail import send_mail
from django.core.files.storage import FileSystemStorage
from django.conf import settings
from django.core.exceptions import ValidationError
import random, re

# Create your views here.
def login_view(request):
    context = {}
    if request.user.is_authenticated:
        return redirect("/lobby")
    elif request.POST:
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user:
            login(request, user)
            if request.user.is_admin:
                return redirect('/admin')
            if 'next' in request.POST:
                return redirect(request.POST.get('next'))
            else:
                return redirect("/lobby") 
        else:
            context['str'] = "Invalid credentials!"
            return render(request, "personal/login.html", context)
    else:
        return render(request, "personal/login.html", {})

def signup_view(request):
    context = {}
    if request.user.is_authenticated:
        return redirect("/blog")
    elif request.POST:
        username = request.POST['username']
        password = request.POST['password']
        lastname = request.POST['lastname']
        firstname = request.POST['firstname']
        password2 = request.POST['conpassword']
        email = request.POST['email']
        mobileNumber = request.POST['mobileNumber']
        address = request.POST['address']
        birthdate = request.POST['birthdate']
        isOrganizer = False
        if User.objects.filter(username=username).exists() == True:
            context["msg"] = "Username already taken!"
            return render(request,"personal/signup.html", context)

        if User.objects.filter(email=email).exists() == True:
            context["msg"] = "Email is already taken!"
            return render(request,"personal/signup.html", context)
        
        if User.objects.filter(mobileNumber=mobileNumber).exists() == True:
            context["msg"] = "Number is already taken!"
            return render(request,"personal/signup.html", context)
        
        if len(username) >= 6:
            if re.search("[a-zA-Z_]", username[0]):
                for x in username:
                    if not re.search("[\w]", x):
                        context["msg"] = "Invalid username!"
                        return render(request,"personal/signup.html", context)
                try:
                    validate_password(password, user=None, password_validators=None)
                except ValidationError:
                    context["msg"] = "Invalid password"
                    context["error"] = 1
                    return render(request, "personal/signup.html", context)
                else:
                    if password == password2:
                        password = make_password(password)
                        user = User(username=username,password=password,email=email,mobileNumber=mobileNumber,is_organizer=isOrganizer,address=address,birthdate=birthdate, lastname = lastname, firstname = firstname)
                        user.save()
                        login(request,user)
                        context["msg"] = firstname +" "+ lastname+ " "+ "User added successfully"
                        return render(request,"personal/signup.html", context)
                    else:
                        context["msg"] = "Recheck password!"
                        return render(request,"personal/signup.html", context)
            else:
                context["msg"] = "Invalid username!"
                return render(request,"personal/signup.html", context)
        else:
            context["msg"] = "Invalid username!"
            return render(request,"personal/signup.html", context)
    else:
        return render(request, "personal/signup.html", context)

def forget_view(request):
    if request.user.is_authenticated:
        return render(request, "personal/lobby.html")
    elif request.POST:
        email = request.POST['email']
        request.session["email"] = email
        context = {}
        if User.objects.filter(email=email).exists():
            #send otp to email
            request.session["otp"] = str(random.randint(1000,9999))
            otp = request.session["otp"]
            subject = 'OTP'
            message = "Your OTP is " + otp
            from_email = settings.EMAIL_HOST_USER
            recipient_list = [email]
            send_mail(subject,message,from_email,recipient_list)
            return redirect("/forgotpassword_otp")
        else:
            context["msg"] = "Email is not in use!"
            return render(request, "personal/forgotpass.html", context)
    return render(request, "personal/forgotpass.html")

def forget_otp(request):
    context = {}
    otp = request.session.get("otp", "none")
    if request.user.is_authenticated:
        return render(request, "personal/lobby.html")
    elif request.POST:
        val = request.POST["otp"]
        if val == otp:
            return render(request, "personal/changePassword.html")
        else:
            context["msg"] = "Incorrect OTP!"
            return render(request, "personal/forgotpass2.html", context)
    elif otp == "none":
        return redirect("/forgotpassword")
    else:
        context["msg"] = "Check your email!"
        return render(request, "personal/forgotpass2.html", context)

def forget_set_pass(request):
    if request.user.is_authenticated:
        return render(request, "personal/lobby.html")
    elif not request.POST:
        return render(request, "personal/login.html")
    
    context = {}
    user = User.objects.get(email=request.session["email"])

    password = request.POST["password"]
    con_password = request.POST["conpassword"]

    if password == con_password:
        user.set_password(password)
        user.save()
        context["msg"] = "Changed Successfully!"
    else:
        context["msg"] = "Must be the same!"

    return render(request, "personal/changePassword.html", context)

@login_required()
def profile_view(request):
    context = {}
    
    if request.user.is_organizer:
        games = Game.objects.all().filter(organizer=request.user).order_by("date")
        context["games"] = games
    else:
        bet = Bet.objects.all().filter(bettor=request.user).order_by("date")
        context["bets"] = bet

    return render(request, "personal/profile.html", context)
    
def logout_user(request):
    logout(request)
    return redirect("/")

@login_required()
def wallet_view(request):
    print(request.headers)
    return render(request, "personal/wallet.html", {})

@login_required()
def withdraw(request):
    print(request.headers)
    return render(request, "personal/withdraw.html", {})

@login_required()
def deposit(request):
    print(request.headers)
    return render(request, "personal/deposit.html", {})

@login_required()
def send_view(request):
    print(request.headers)
    return render(request, "personal/send.html", {})

@login_required()
def send(request):
    context = {}
    val = request.POST["amount"]
    amount = int(val)
    id = request.POST["userid"]
    check = User.objects.filter(id=id).exists()

    if check:
        if request.user.wallet >= amount and amount > 0:
            sender = User.objects.get(id=request.user.id)
            receiver = User.objects.get(id=id)
            sender.wallet = sender.wallet - amount
            receiver.wallet = receiver.wallet + amount
            sender.save()
            receiver.save()
            context["msg"] = "Sent successfully to " + receiver.username + "."
            context["check"] = 1
            context["balance"] = sender.wallet
        else:
            context["msg1"] = "Enter a valid amount!"
    else:
        context["msg2"] = "User id is not active!"

    return render(request, "personal/send.html", context)

@login_required()
def lobby_view(request):
    context = {}
    games = Game.objects.all().filter(is_local=False,is_done=False).order_by("date")
    local = Game.objects.all().filter(is_local=True,is_done=False).order_by("date")
    done = Game.objects.all().filter(is_done=True).order_by("date")
    list(games)
    list(local)
    list(done)
    context["games"] = games
    context["local"] = local
    context["done"] = done
    return render (request, "personal/lobby.html", context)

@login_required()
def update_view(request):
    return render(request, "personal/update.html")

@login_required()
def update_user(request):
    context = {}
    username = request.POST["username"]
    email = request.POST["email"]
    mobileNumber = request.POST["mobileNumber"]
    usercheck = User.objects.filter(username=username).exists()
    emailcheck = User.objects.filter(email=email).exists()
    numbercheck = User.objects.filter(mobileNumber=mobileNumber).exists()
    id = request.user.id
    user = User.objects.get(id=id)

    if usercheck:
        if username != request.user.username:
            context["msg_user_warn"] = "Username is already taken!"
    else:
        user.username = username
        user.save()
        context["username"] = username
        context["msg_user"] = "Changed!"
        context["msg"] = "Changes has been applied successfully!"
    
    if emailcheck:
        if email != request.user.email:
            context["msg_email_warn"] = "Email is already taken!"
    else:
        user.email = email
        user.save()
        context["email"] = email
        context["msg_email"] = "Changed!"
        context["msg"] = "Changes has been applied successfully!"

    if numbercheck:
        if mobileNumber != request.user.mobileNumber:
            context["msg_num_warn"] = "Number is already taken!"
    else:
        user.mobileNumber = mobileNumber
        user.save()
        context["mobileNumber"] = mobileNumber
        context["msg_num"] = "Changed!"
        context["msg"] = "Changes has been applied successfully!"

    return render(request, "personal/update.html", context)

@login_required()
def update_password_view(request):
    return render(request, "personal/updatePassword.html")

@login_required()
def update_password(request):
    context = {}
    old_pass = request.POST["password"]
    new_pass = request.POST["new_password"]
    con_pass = request.POST["con_new_password"]
    id = request.user.id
    user = User.objects.get(id=id)

    if user.check_password(old_pass):
        if old_pass == new_pass:
            context["err3"] = "Using Current Password!"
            return render(request, "personal/updatePassword.html", context)
        else:
            if new_pass == con_pass:
                user.set_password(new_pass)
                user.save()
                update_session_auth_hash(request, user)
                context["msg"] = "Changed Successfully!"
                return render(request, "personal/updatePassword.html", context)
            else:
                context["err2"] = "Password is not the same!"
                return render(request, "personal/updatePassword.html", context)
    else:
        context["err1"] = "Incorrect Password!"
        return render(request, "personal/updatePassword.html", context)

@login_required()
def blog_view(request):
    context = {}
    blogs = Blog.objects.all().order_by("-date_posted")[:5]
    blogposts = Blog.objects.all().order_by("-date_posted")
    context["blogs"] = blogs
    context["blogposts"] = blogposts
    return render(request, "personal/blog.html", context)

@login_required()
def blog_detail(request, slug):
    context = {}
    blog = get_object_or_404(Blog, slug = slug)
    context["blog"] = blog
    return render(request, "personal/detail.html", context)

@login_required()
def game_view(request, slug):
    context = {}

    game = get_object_or_404(Game, slug = slug)

    bets_A = Bet.objects.all().filter(game=game,team="Team A")
    bets_B = Bet.objects.all().filter(game=game,team="Team B")
    total_A = 0
    total_B = 0

    for bets in bets_A:
        total_A = total_A + bets.amount
    
    for bets in bets_B:
        total_B = total_B + bets.amount
    
    context["total_A"] = total_A
    context["total_B"] = total_B

    win_A = ((1/(total_A+1)) * (total_B+.5)) + 1
    win_B = ((1/(total_B+1)) * (total_A+.5)) + 1
    
    context["A"] = round(win_A,2)
    context["B"] = round(win_B,2)
    context["game"] = game

    blogs = Blog.objects.all().filter(related_to=game)
    context["blogs"] = blogs

    return render(request, "personal/game.html", context)

@login_required()
def winner(request, slug):
    context = {}

    winner = request.POST["winner"]
    game = get_object_or_404(Game, slug = slug)
    game.winner = winner
    game.is_done = True
    game.save()

    if game.winner == game.team_A:
        win = "Team A"
    else:
        win = "Team B"

    bets = Bet.objects.all().filter(game=game)
    total_A = 0
    total_B = 0

    for bet in bets:
        if bet.team == "Team A":
            total_A = total_A + bet.amount
        else:
            total_B = total_B + bet.amount
    
    context["total_A"] = total_A
    context["total_B"] = total_B

    for bet in bets:
        if bet.team == win:
            bet.status = "Win"
            user = User.objects.get(id=bet.bettor.id)
            if win == "Team A":
                perc = bet.amount / total_A
                total = (total_B+.5) * .80
                won = (perc * total) + bet.amount
                user.wallet += won
                user.save()
            else:
                perc = bet.amount / total_B
                total = (total_A+.5) * .80
                won = (perc * total) + bet.amount
                user.wallet += won
                user.save()
        else:
            bet.status = "Lose"
        bet.save()
    
    if win == "Team A":
        com = (total_B+.5) * .10
    else:
        com = (total_A+.5) * .10

    org = User.objects.get(id=game.organizer.id)
    org.wallet += com
    org.save()

    context["msg"] = "Updated!"
    context["game"] = game

    return render(request, "personal/game.html", context)

@login_required()
def add_game(request):
    if not request.user.is_admin:
        return redirect("/lobby")
    if not request.POST:
        return render(request, "personal/addGame.html")
    context = {}

    team_A = request.POST["team_A"]
    team_B = request.POST["team_B"]
    info_A = request.POST["info_A"]
    info_B = request.POST["info_B"]
    logo_A = request.POST["logo_A"]
    logo_B = request.POST["logo_B"]
    date = request.POST["date"]

    if team_A == team_B:
        context["msg"] = "That's two the same team!"
    else:
        if request.user.is_admin:
            game = Game(team_A=team_A,team_B=team_B,info_A=info_A,info_B=info_B,date=date,is_local=False,organizer=request.user)
            if logo_A:
                game.logo_A = logo_A
            if logo_B:
                game.logo_B = logo_B
            game.save()
        else:
            game = Game(team_A=team_A,team_B=team_B,info_A=info_A,info_B=info_B,date=date,is_local=True,organizer=request.user)
            if logo_A:
                game.logo_A = logo_A
            if logo_B:
                game.logo_B = logo_B
            game.save()
        context["msg"] = "Success!"

    return render(request, "personal/addGame.html", context)

@login_required()
def bet_view(request, slug):
    context = {}

    game = get_object_or_404(Game, slug = slug)
    context["game"] = game

    return render(request, "personal/bet.html", context)

@login_required()
def bet(request, slug):
    context = {}

    game = get_object_or_404(Game, slug = slug)

    amount = int(request.POST["amount"])
    team = request.POST["team"]

    if team == game.team_A:
        team = "Team A"
    else:
        team = "Team B"

    check = Bet.objects.filter(bettor=request.user,game=game).exists()

    if check:
        bet = Bet.objects.get(bettor=request.user,game=game)
        if bet.team == team:
            if request.user.wallet >= amount and amount > 0:
                bet.amount = bet.amount + amount
                bet.save()
                user = User.objects.get(id=request.user.id)
                user.wallet = user.wallet - amount
                user.save()
                context["msg"] = "Bet updated!"
            else:
                context["msg"] = "Please place a valid amount!"
        else:
            if request.user.wallet >= amount and amount > 0:
                bet = Bet(amount=amount,bettor=request.user,game=game,team=team)
                user = User.objects.get(id=request.user.id)
                user.wallet = user.wallet - amount
                bet.save()
                user.save()
                context["msg"] = "Bet Placed!"
            else:
                context["msg"] = "Please place a valid amount!"
    else:
        if request.user.wallet >= amount and amount > 0:
            bet = Bet(amount=amount,bettor=request.user,game=game,team=team)
            user = User.objects.get(id=request.user.id)
            user.wallet = user.wallet - amount
            bet.save()
            user.save()
            context["msg"] = "Bet Placed!"
        else:
            context["msg"] = "Please place a valid amount!"

    context["game"] = game

    return render(request, "personal/bet.html", context)

@login_required()
def add_blog_view(request, slug):
    context = {}

    game = get_object_or_404(Game, slug = slug)

    context["game"] = game
    return render(request, "personal/addBlog.html", context)

@login_required()
def add_blog(request, slug):
    context = {}

    title = request.POST["title"]
    content = request.POST["content"]
    image = request.FILES["image"]

    #Get the game from the Game model
    game = get_object_or_404(Game, slug = slug)

    #Add blog to the Blog model
    blog = Blog(title=title,content=content,image=image,related_to=game,author=request.user)
    blog.save()

    context["msg"] = "Blog added successfully"
    context["game"] = game
    return render(request, "personal/addBlog.html", context)

@login_required()
def withdraw_user(request):
    context = {}

    amount = float(request.POST["amount"])

    user = User.objects.get(id=request.user.id)
    if user.on_hold:
        context["msg"] = "Please wait for pending withdrawal before requesting again"
    elif amount > user.wallet:
        context["err"] = "Amount exceeds your balance"
    else:
        user.wallet -= amount
        user.on_hold += amount
        user.save()
        withdraw = Withdraw(amount=amount,requested_by=request.user)
        withdraw.save()
        context["msg"] = "Your withdrawal request is pending"
    
    return render(request, "personal/withdraw.html", context)

@login_required
def admin_view(request):
    if not request.user.is_admin:
        return redirect('/blog')
    return render(request, "personal/admin.html")

@login_required
def organizer_signup(request):
    if not request.user.is_admin:
        return redirect('/lobby')
    return render(request, "personal/organizer_signup.html", {})

@login_required
def admin_signup(request):
    if not request.user.is_admin:
        return redirect('/lobby')
    return render(request, "personal/admin_signup.html", {})