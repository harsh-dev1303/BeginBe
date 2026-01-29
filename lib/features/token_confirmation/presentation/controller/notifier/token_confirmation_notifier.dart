
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/domain/entity/token_confirmation_entity.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/domain/locator/token_confirmation_locator.dart';

part 'token_confirmation_notifier.g.dart';

@riverpod
class TokenConfirmationNotifier extends _$TokenConfirmationNotifier{

  Future<TokenConfirmationEntity> build(String categoryId,String date) async {
    return await _fetchTokenConfirmation(categoryId,date);
  }

  
  Future<TokenConfirmationEntity> _fetchTokenConfirmation(String categoryId,String date)async{
    final repo = await ref.watch(tokenConfirmationRepoLocatorProvider.future);
    final tokenConfirmation = await repo.getTokenConfirmation(categoryId, date);
    return tokenConfirmation.fold(
      (failure){
         throw Exception(failure.message.toString());
      }, 
      (tokenConfirmationEntity){
        return tokenConfirmationEntity;
      }
      );
  }

  Future<void> retryTokenConfirm()async{
    state = AsyncValue.loading();
    state = await AsyncValue.guard(()=>_fetchTokenConfirmation(categoryId,date));
  }


}