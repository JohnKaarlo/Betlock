import datetime
import decimal
from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth import authenticate,get_user, login, logout, update_session_auth_hash
from Services.Cashiers.models import Stats
from account.models import User
from bet import models
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
from django.db.models import Sum
from django.views.decorators.csrf import csrf_exempt
from django.db.models.functions import Cast
from django.db.models.functions import Trunc
from django.db.models import DateTimeField
from django.db import connection

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
                update_user_wallet(user)
                return redirect("/lobby") 
        else:
            context['str'] = "Invalid credentials!"
            return render(request, "personal/login.html", context)
    else:
        try:
            del request.session['otp']
        except KeyError:
            pass
        return render(request, "personal/login.html", context)
    
@csrf_exempt
def update_user_wallet(user):

    cursor = connection.cursor()
    cursor.execute("""
        SELECT SUM(s.bet) as winnings
        FROM betlock.stats s
        INNER JOIN betlock.bet_bet b ON s.gameid = b.game_id
        WHERE b.status = 'Win' AND s.game_stat = '' AND s.type = 'bet' AND s.player_id = %s
    """, [user.id])

    winnings_sum = cursor.fetchone()
    if winnings_sum and winnings_sum[0] is not None:
        winnings_sum = decimal.Decimal(winnings_sum[0]) * decimal.Decimal('0.9') 
    else:
        winnings_sum = 0


    deposit_sum = Stats.objects.filter(player=user, type='Deposit').aggregate(total_deposit=Sum('pot'))['total_deposit'] or 0
    withdrawal_sum = Stats.objects.filter(player=user, type='Withdrawal').aggregate(total_withdrawal=Sum('pot'))['total_withdrawal'] or 0
   
    total_pot = deposit_sum - withdrawal_sum + winnings_sum
    user.wallet = total_pot
    user.save()
    
    if winnings_sum > 0:
        Stats.objects.filter(player=user, type='bet', game_stat='').update(game_stat='paid')


def signup_view(request):
    context = {}
    if request.user.is_authenticated:
        return redirect("/lobby")
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
        # check is username exist
        if User.objects.filter(username=username).exists() == True:
            context["msg"] = "Username already taken!"
            return render(request,"personal/signup.html", context)
        # email validation
        if User.objects.filter(email=email).exists() == True:
            context["msg"] = "Email is already taken!"
            return render(request,"personal/signup.html", context)
        elif not re.search("[a-zA-Z_]", email[0]):
            context["msg"] = "Invalid email"
            return render(request,"personal/signup.html", context)
        # mobile number validation
        if User.objects.filter(mobileNumber=mobileNumber).exists() == True:
            context["msg"] = "Number is already taken!"
            return render(request,"personal/signup.html", context)
        elif not len(mobileNumber) == 11:
            context["msg"] = "Invalid mobile number!"
            return render(request,"personal/signup.html", context)
        else:
            if not mobileNumber[0] == '0' or not mobileNumber[1] == '9':
                context["msg"] = "Invalid mobile number!"
                return render(request,"personal/signup.html", context)
            for x in mobileNumber:
                if not re.search("[0-9]", x):
                    context["msg"] = "Invalid mobile number!"
                    return render(request,"personal/signup.html", context)
        # username and password validation
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
                    return render(request, "personal/signup.html", context)
                else:
                    if password == password2:
                        # Name validation
                        if not re.search("[a-zA-Z_]", firstname[0]):
                            context["msg"] = "Invalid firstname"
                            return render(request,"personal/signup.html", context)
                        for x in firstname:
                            if not re.search("[\w]", x):
                                context["msg"] = "Invalid firstname!"
                                return render(request,"personal/signup.html", context)
                        if not re.search("[a-zA-Z_]", lastname[0]):
                            context["msg"] = "Invalid lastname"
                            return render(request,"personal/signup.html", context)
                        for x in lastname:
                            if not re.search("[\w]", x):
                                context["msg"] = "Invalid lastname!"
                                return render(request,"personal/signup.html", context)
                        # save user
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
        try:
            del request.session['otp']
        except KeyError:
            pass
        return render(request, "personal/signup.html", context)

def forget_view(request):
    if request.user.is_authenticated:
        return redirect('/lobby')
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
    else:
        try:
            del request.session['otp']
        except KeyError:
            pass
        return render(request, "personal/forgotpass.html")

def forget_otp(request):
    context = {}
    otp = request.session.get("otp", "none")
    if request.user.is_authenticated:
        return redirect('/lobby')
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
        return redirect('/lobby')
    elif not request.POST:
        return redirect('/')
    
    try:
        del request.session['otp']
    except KeyError:
        pass

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
    return render(request, "personal/profile.html", {})
    
def logout_user(request):
    logout(request)
    return redirect("/")

@login_required()
def wallet_view(request):
    if request.user.is_admin:
        return redirect('/admin')
    return render(request, "personal/wallet.html", {})

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
    if request.user.is_admin:
        return redirect('/admin')
    elif request.user.is_organizer:
        return redirect('/profile')
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
    if request.POST:
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
    else:
        return render(request, "personal/update.html")
    
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
    if not request.user.is_organizer:
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
    max_bet = request.POST["max_bet"]
    min_bet = request.POST["min_bet"]
    fee = request.POST["fee"]

    if team_A == team_B:
        context["msg"] = "That's two the same team!"
    else:
        if request.user.is_admin:
            game = Game(team_A=team_A,team_B=team_B,info_A=info_A,info_B=info_B,date=date,is_local=False,organizer=request.user, max_bet = max_bet, min_bet=min_bet, fee=fee)
            if logo_A:
                game.logo_A = logo_A
            if logo_B:
                game.logo_B = logo_B
            game.save()
        else:
            game = Game(team_A=team_A,team_B=team_B,info_A=info_A,info_B=info_B,date=date,is_local=True,organizer=request.user,max_bet = max_bet, min_bet=min_bet, fee=fee)
            if logo_A:
                game.logo_A = logo_A
            if logo_B:
                game.logo_B = logo_B
            game.save()
        context["msg"] = "Your game creation process has been successfully completed, showcasing your dedication, creativity, and skill in crafting captivating gaming experiences."

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

    if request.user.id:
        try:
            player = User.objects.get(pk=request.user.id)
        except User.DoesNotExist:
            context["msg"] = "Player not found."
            return
    else:
        context["msg"] = "Player ID is required."
        return
    if  amount > 0:
        Stats.objects.create(player=player, type="bet",bet=amount, gameid = game.id)
        Bet.objects.create(bettor=request.user,game=game,team=team)
        user = User.objects.get(id=request.user.id)
        user.wallet = user.wallet - amount
        user.save()
        context["msg"] = "You have successfully bet on the {team} team, securing your victory and potential rewards"
    else:
        context["msg"] = "Unfortunately, your bet did not succeed this time. Better luck next time"

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
def gamelist_view(request):
    if not request.user.is_organizer:
        return redirect('/gamelist')
    return render(request, "personal/gamelist.html")

@login_required
def admin_view(request):
    if not request.user.is_admin:
        return redirect('/lobby')
        
    return render(request, "personal/admin.html")

def generate_usernameAndpassword(last_name):
    today = datetime.datetime.now()
    date_str = today.strftime('%m%d%Y')
    password = f"{last_name}{date_str}"
    return password

@login_required
def organizer_signup(request):
    context = {}
    if request.POST:
        lastname = request.POST.get('lastname')
        firstname = request.POST.get('firstname')
        email = request.POST.get('email')
        mobileNumber = request.POST.get('mobileNumber')
        address = request.POST.get('address')
        birthdate = request.POST.get('address')
        username =  generate_usernameAndpassword(lastname)
        password = generate_usernameAndpassword(lastname)
        password2 = generate_usernameAndpassword(lastname)
        isOrganizer = True
        # check is username exist
        if User.objects.filter(username=username).exists() == True:
            context["msg"] = "Username already taken!"
            return render(request, "personal/organizer_signup.html", context)
        # email validation
        if User.objects.filter(email=email).exists() == True:
            context["msg"] = "Email is already taken!"
            return render(request, "personal/organizer_signup.html", context)
        elif not re.search("[a-zA-Z_]", email[0]):
            context["msg"] = "Invalid email"
            return render(request, "personal/organizer_signup.html", context)
        # mobile number validation
        if User.objects.filter(mobileNumber=mobileNumber).exists() == True:
            context["msg"] = "Number is already taken!"
            return render(request, "personal/organizer_signup.html", context)
        elif not len(mobileNumber) == 11:
            context["msg"] = "Invalid mobile number!"
            return render(request, "personal/organizer_signup.html", context)
        else:
            if not mobileNumber[0] == '0' or not mobileNumber[1] == '9':
                context["msg"] = "Invalid mobile number!"
                return render(request, "personal/organizer_signup.html", context)
            for x in mobileNumber:
                if not re.search("[0-9]", x):
                    context["msg"] = "Invalid mobile number!"
                    return render(request, "personal/organizer_signup.html", context)
        # username and password validation
        if len(username) >= 6:
            if re.search("[a-zA-Z_]", username[0]):
                for x in username:
                    if not re.search("[\w]", x):
                        context["msg"] = "Invalid username!"
                        return render(request, "personal/organizer_signup.html", context)
                try:
                    validate_password(password, user=None, password_validators=None)
                except ValidationError:
                    context["msg"] = "Invalid password"
                    return render(request, "personal/organizer_signup.html", context)
                else:
                    if password == password2:
                        # Name validation
                        if not re.search("[a-zA-Z_]", firstname[0]):
                            context["msg"] = "Invalid firstname"
                            return render(request, "personal/organizer_signup.html", context)
                        for x in firstname:
                            if not re.search("[\w]", x):
                                context["msg"] = "Invalid firstname!"
                                return render(request, "personal/organizer_signup.html", context)
                        if not re.search("[a-zA-Z_]", lastname[0]):
                            context["msg"] = "Invalid lastname"
                            return render(request, "personal/organizer_signup.html", context)
                        for x in lastname:
                            if not re.search("[\w]", x):
                                context["msg"] = "Invalid lastname!"
                                return render(request, "personal/organizer_signup.html", context)
                        # save user
                        password = make_password(password)
                        user = User(username=username,password=password,email=email,mobileNumber=mobileNumber,is_organizer=isOrganizer,address=address,birthdate=birthdate, lastname = lastname, firstname = firstname)
                        user.save()
                        login(request,user)
                        context["msg"] = firstname +" "+ lastname+ " "+ "User added successfully"
                        context["password"] = password2
                        context["username"] = username
                        return render(request, "personal/organizer_signup.html", context)
                    else:
                        context["msg"] = "Recheck password!"
                        return render(request, "personal/organizer_signup.html", context)
            else:
                context["msg"] = "Invalid username!"
                return render(request, "personal/organizer_signup.html", context)
        else:
            context["msg"] = "Invalid username!"
            return render(request, "personal/organizer_signup.html", context)
    else:
        try:
            del request.session['otp']
        except KeyError:
            pass
        return render(request, "personal/organizer_signup.html", context)

@login_required
def admin_signup(request):
    context = {}
    if request.POST:
        lastname = request.POST.get('lastname')
        firstname = request.POST.get('firstname')
        email = request.POST.get('email')
        mobileNumber = request.POST.get('mobileNumber')
        address = request.POST.get('address')
        birthdate = request.POST.get('address')
        username =  generate_usernameAndpassword(lastname)
        password = generate_usernameAndpassword(lastname)
        password2 = generate_usernameAndpassword(lastname)
        isOrganizer = False
        isAdmin = True
        # check is username exist
        if User.objects.filter(username=username).exists() == True:
            context["msg"] = "Username already taken!"
            return render(request, "personal/admin_signup.html", context)
        # email validation
        if User.objects.filter(email=email).exists() == True:
            context["msg"] = "Email is already taken!"
            return render(request, "personal/admin_signup.html", context)
        elif not re.search("[a-zA-Z_]", email[0]):
            context["msg"] = "Invalid email"
            return render(request, "personal/admin_signup.html", context)
        # mobile number validation
        if User.objects.filter(mobileNumber=mobileNumber).exists() == True:
            context["msg"] = "Number is already taken!"
            return render(request, "personal/admin_signup.html", context)
        elif not len(mobileNumber) == 11:
            context["msg"] = "Invalid mobile number!"
            return render(request, "personal/admin_signup.html", context)
        else:
            if not mobileNumber[0] == '0' or not mobileNumber[1] == '9':
                context["msg"] = "Invalid mobile number!"
                return render(request, "personal/admin_signup.html", context)
            for x in mobileNumber:
                if not re.search("[0-9]", x):
                    context["msg"] = "Invalid mobile number!"
                    return render(request, "personal/admin_signup.html", context)
        # username and password validation
        if len(username) >= 6:
            if re.search("[a-zA-Z_]", username[0]):
                for x in username:
                    if not re.search("[\w]", x):
                        context["msg"] = "Invalid username!"
                        return render(request, "personal/admin_signup.html", context)
                try:
                    validate_password(password, user=None, password_validators=None)
                except ValidationError:
                    context["msg"] = "Invalid password"
                    return render(request, "personal/admin_signup.html", context)
                else:
                    if password == password2:
                        # Name validation
                        if not re.search("[a-zA-Z_]", firstname[0]):
                            context["msg"] = "Invalid firstname"
                            return render(request, "personal/admin_signup.html", context)
                        for x in firstname:
                            if not re.search("[\w]", x):
                                context["msg"] = "Invalid firstname!"
                                return render(request, "personal/admin_signup.html", context)
                        if not re.search("[a-zA-Z_]", lastname[0]):
                            context["msg"] = "Invalid lastname"
                            return render(request, "personal/admin_signup.html", context)
                        for x in lastname:
                            if not re.search("[\w]", x):
                                context["msg"] = "Invalid lastname!"
                                return render(request, "personal/admin_signup.html", context)
                        # save user
                        password = make_password(password)
                        user = User(username=username,password=password,email=email,mobileNumber=mobileNumber,is_organizer=isOrganizer,is_admin=isAdmin,address=address,birthdate=birthdate, lastname = lastname, firstname = firstname)
                        user.save()
                        login(request,user)
                        context["msg"] = firstname +" "+ lastname+ " "+ "User added successfully"
                        context["password"] = password2
                        context["username"] = username
                        return render(request, "personal/admin_signup.html", context)
                    else:
                        context["msg"] = "Recheck password!"
                        return render(request, "personal/admin_signup.html", context)
            else:
                context["msg"] = "Invalid username!"
                return render(request, "personal/admin_signup.html", context)
        else:
            context["msg"] = "Invalid username!"
            return render(request, "personal/admin_signup.html", context)
    else:
        try:
            del request.session['otp']
        except KeyError:
            pass
        return render(request, "personal/admin_signup.html", context)

@login_required
def my_games(request):
    if request.user.is_admin:
        return redirect('/admin')
    
    context = {}
    
    if request.user.is_organizer:
        games = Game.objects.filter(organizer=request.user).order_by("date")
        context["games"] = games
    else:
        bets = Bet.objects.filter(bettor=request.user).annotate(
            datetime=Trunc('date', 'second', output_field=DateTimeField())
        ).order_by("date")
                
        stats = Stats.objects.filter(
                    gameid__in=bets.values('game_id'),
                    player_id=request.user.id
                ).annotate(
                    datetime=Trunc('created_at', 'second', output_field=DateTimeField())
                )

        
        merged_data = []
        for bet in bets:
            for stat in stats:
                if bet.game_id == stat.gameid:

                    merged_data.append({
                        "gameid": bet.game_id,
                        "player_id": bet.bettor_id,
                        "date": bet.datetime,
                        "datetime": bet.datetime,
                        "bet": stat.bet,
                        "fee": stat.fee,
                        "game": bet.game,
                        "team" : bet.game,
                        "status" : bet.status,
                        "total_amount" : stat.bet
                    })
                    break
        
        context["bets"] = merged_data

    return render(request, "personal/mygames.html", context)

@login_required
def my_betsledger(request):
    return render(request, "ledger/mybets.html")

@login_required
def my_withdrawalledger(request):
    return render(request, "ledger/mywithdrawal.html")

@login_required
def my_depositledger(request):
    return render(request, "ledger/mydeposit.html")