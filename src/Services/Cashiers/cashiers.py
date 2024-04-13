from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import get_user_model
import json

from Services.Cashiers.models import Transaction

User = get_user_model()

@csrf_exempt
def create_transaction(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        
        # Retrieve user based on the provided user id or username
        player_id = data.get('player_id')
        if player_id:
            try:
                player = User.objects.get(pk=player_id)
            except User.DoesNotExist:
                return JsonResponse({'success': False, 'message': 'Player not found.'}, status=400)
        else:
            return JsonResponse({'success': False, 'message': 'Player ID is required.'}, status=400)
        
        transaction_type = data.get('type')
        amount = data.get('amount')
        
        # Create a new transaction instance
        transaction = Transaction(player=player, type=transaction_type, amount=amount)
        
        # Save the transaction to the database
        try:
            transaction.save()
            return JsonResponse({'success': True, 'message': 'Transaction created successfully.'})
        except Exception as e:
            return JsonResponse({'success': False, 'message': str(e)}, status=500)
    else:
        return JsonResponse({'success': False, 'message': 'Only POST requests are allowed.'}, status=405)
