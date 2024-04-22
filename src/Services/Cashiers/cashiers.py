import json
import random
from django.http import JsonResponse
from django.shortcuts import get_object_or_404
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import get_user_model
from Services.Cashiers.models import Stats, Transaction  
from account.models import User
from game.models import Game 

User = get_user_model()

@csrf_exempt
def create_transaction(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        
        player_id =request.user.id
        if player_id:
            try:
                player = User.objects.get(pk=player_id)
            except User.DoesNotExist:
                return JsonResponse({'success': False, 'message': 'Player not found.'}, status=400)
        else:
            return JsonResponse({'success': False, 'message': 'Player ID is required.'}, status=400)
        
        transaction_type = data.get('type')
        amount = data.get('amount')

        while True:
            code = ''.join(random.choices('0123456789', k=6))
            if not Transaction.objects.filter(code=code).exists():
                break
        
        transaction = Transaction(player=player, type=transaction_type, amount=amount, status = 'pending',code=code, currency = 'PHP')
        
        try:
            transaction.save()
            return JsonResponse({'success': True, 'message': 'Transaction created successfully.','code': code})
        except Exception as e:
            return JsonResponse({'success': False, 'message': str(e)}, status=500)
    else:
        return JsonResponse({'success': False, 'message': 'Only POST requests are allowed.'}, status=405)

def get_transactions(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        print(data)
        date_from = data.get('date_from')
        date_to = data.get('date_to')
        code = data.get('code')
        
        if date_from and date_to and (code is None or code == ''):
            transactions = Transaction.objects.filter(created_at__range=[date_from, date_to])
        elif code and (date_from is None or date_to is None or date_to == ''):
            transactions = Transaction.objects.filter(code=code)
        elif  date_from and date_to and code:
            transactions = Transaction.objects.filter(created_at__range=[date_from, date_to])
        else:
            transactions = Transaction.objects.all()
        
        transaction_list = []
        for transaction in transactions:

            try:
                user = User.objects.get(pk=transaction.player_id)  
                firstname = user.firstname
                lastname = user.lastname
            except User.DoesNotExist:
                firstname = ''
                lastname = ''
        
            transaction_data = {
                'player_id': transaction.player_id,
                'firstname': firstname,
                'lastname': lastname,
                'type': transaction.type,
                'status': transaction.status,
                'amount': str(transaction.amount),
                'updated_at': transaction.updated_at.strftime('%Y-%m-%d %H:%M:%S') if transaction.updated_at else None,
                'created_at': transaction.created_at.strftime('%Y-%m-%d %H:%M:%S'),
                'currency': transaction.currency,
                'code': transaction.code
            }
            transaction_list.append(transaction_data)
        
        return JsonResponse({'success': True, 'transactions': transaction_list})
    else:
        return JsonResponse({'success': False, 'message': 'Only POST requests are allowed.'}, status=405)
    
@csrf_exempt
def update_transaction_status(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        new_status = data.get('status')
        player_id = data.get('id')
        code = data.get('code')

        if new_status not in ['completed', 'cancelled']:
            return JsonResponse({'success': False, 'message': 'Invalid status.'}, status=400)

        transaction = get_object_or_404(Transaction, player_id=player_id, code=code, status='pending')

        transaction.status = new_status

        try:
            transaction.save()
            return JsonResponse({'success': True, 'message': 'Transaction status updated successfully.'})
        except Exception as e:
            return JsonResponse({'success': False, 'message': str(e)}, status=500)
    else:
        return JsonResponse({'success': False, 'message': 'Only POST requests are allowed.'}, status=405)

@csrf_exempt
def create_stats(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        
        player_id = data.get('id')
        if player_id:
            try:
                player = User.objects.get(pk=player_id)
            except User.DoesNotExist:
                return JsonResponse({'success': False, 'message': 'Player not found.'}, status=400)
        else:
            return JsonResponse({'success': False, 'message': 'Player ID is required.'}, status=400)
        
        transaction_type = data.get('type')
        amount = data.get('amount')

        try:
            Stats.objects.create(player=player, type=transaction_type, pot=amount)
            return JsonResponse({'success': True, 'message': 'Stats created successfully.'})
        except Exception as e:
            return JsonResponse({'success': False, 'message': str(e)}, status=500)
    else:
        return JsonResponse({'success': False, 'message': 'Only POST requests are allowed.'}, status=405)


def get_undone_games(request):
    if request.method == 'POST':
        undone_games = Game.objects.filter(is_done=False)

        game_list = []
        for game in undone_games:
            game_data = {
                'id': game.id,
                'team_A': game.team_A,
                'team_B': game.team_B,
                'info_A': game.info_A,
                'info_B': game.info_B,
                'logo_A': game.logo_A.url if game.logo_A else None,
                'logo_B': game.logo_B.url if game.logo_B else None,
                'is_local': game.is_local,
                'is_done': game.is_done,
                'slug': game.slug,
                'date_created': game.date_created.strftime('%Y-%m-%d %H:%M:%S'),
                'date': game.date.strftime('%Y-%m-%d %H:%M:%S'),
                'organizer': game.organizer.username if game.organizer else None,
                'winner': game.winner,
                'series_type': game.series_type,
                'max_bet': str(game.max_bet) if game.max_bet is not None else '0',
                'min_bet': str(game.min_bet) if game.min_bet is not None else '0',
                'fee': str(game.fee) if game.fee is not None else None,
            }
            game_list.append(game_data)

        return JsonResponse({'success': True, 'games': game_list})
    else:
        return JsonResponse({'success': False, 'message': 'Only GET requests are allowed.'}, status=405)

@csrf_exempt
def update_game_status(request):
    if request.method == 'POST':
        data = json.loads(request.body.decode('utf-8'))
        if 'id' not in data or 'winner' not in data:
            return JsonResponse({'success': False, 'message': 'id and winner parameters are required.'}, status=400)

        id = data['id']
        winner = data['winner']

        try:
            game = Game.objects.get(id=id, is_done=False)
            game.is_done = True
            game.winner = winner
            game.save()

            return JsonResponse({'success': True, 'message': 'Game status updated successfully.'})
        except Game.DoesNotExist:
            return JsonResponse({'success': False, 'message': 'Game not found.'}, status=404)
    else:
        return JsonResponse({'success': False, 'message': 'Only POST requests are allowed.'}, status=405)