import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';
import 'package:secure_fintech_bankingapp/core/cache/global_cache.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/core/security/secure_active_tokenId_manager.dart';
import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/data/datasource/token_confirmation_datasource.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/domain/entity/token_confirmation_entity.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/domain/repository/token_confirmation_repo.dart';

class TokenConfirmationRepoimpl implements TokenConfirmationRepo {
  
  final TokenConfirmationDatasource tokenConfirmationDatasource;

  TokenConfirmationRepoimpl(this.tokenConfirmationDatasource);

  @override
  ResultEither<TokenConfirmationEntity> getTokenConfirmation(String categoryId,String date) async {
    try{
      final dateFormatter = DateFormat('dd MMM yyyy');
      final DateTime today = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
      final DateTime tomorrow = today.add(Duration(days: 1));
      final DateTime dayAfterTomorrow = today.add(Duration(days: 2));
      final tokenConfirmationModel = await tokenConfirmationDatasource.fetchTokenConfirmation(categoryId, date);
      if(tokenConfirmationModel.date == dateFormatter.format(today)){
        final existingTodaysTokenId = GlobalCache.getInstance.getTodayActiveTokenId();
        if(!existingTodaysTokenId.contains(tokenConfirmationModel.tokenNumber)){
        existingTodaysTokenId.add(tokenConfirmationModel.tokenNumber);
        await GlobalCache.getInstance.setTodayActiveTokenId(tokensIds:existingTodaysTokenId );
      }
      }else if(tokenConfirmationModel.date == dateFormatter.format(tomorrow)){
         final existingTomorrowsTokenId = GlobalCache.getInstance.getTomorrowActiveTokenId();
        if(!existingTomorrowsTokenId.contains(tokenConfirmationModel.tokenNumber)){
         existingTomorrowsTokenId.add(tokenConfirmationModel.tokenNumber);
        await GlobalCache.getInstance.setTomorrowActiveTokenId(tokensIds: existingTomorrowsTokenId );
      }
      }else if(tokenConfirmationModel.date == dateFormatter.format(dayAfterTomorrow)){
        final existingThirdDaysTokenId = GlobalCache.getInstance.getThirdDayActiveTokenId();
        if(!existingThirdDaysTokenId.contains(tokenConfirmationModel.tokenNumber)){
         existingThirdDaysTokenId.add(tokenConfirmationModel.tokenNumber);
        await GlobalCache.getInstance.setThirdDayActiveTokenId(tokensIds: existingThirdDaysTokenId );
        }
      }
      await SecureActiveTokenIdManager.writeTokenId(tokenId: tokenConfirmationModel.tokenNumber);  
      print("saved active token id after writing in TokenConfirmationRepoimpl:${await SecureActiveTokenIdManager.readTokenId()} ");
      return Either.right(tokenConfirmationModel.toDomain());

    }on ServiceFailure catch(e){
      return Either.left(ServiceFailure(e.message.toString()));
    }
  }

}