import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';
import 'package:secure_fintech_bankingapp/core/cache/global_cache.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/core/security/secure_active_tokenId_manager.dart';
import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/data/datasource/token_confirmation_datasource.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/data/model/stored_token_info/stored_token_model.dart';
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
      print("token confirmation date:${tokenConfirmationModel.date}");
      if(tokenConfirmationModel.date == dateFormatter.format(today)){
        print("token is saved in today");
      //   final existingTodaysTokenId = GlobalCache.getInstance.getTodayActiveTokenId();
      //   if(!existingTodaysTokenId.contains(StoredTokenModel(tokenId: tokenConfirmationModel.tokenNumber,categoryName: tokenConfirmationModel.categoryName,branchName: tokenConfirmationModel.branchName))){
      //   existingTodaysTokenId.add(StoredTokenModel(tokenId: tokenConfirmationModel.tokenNumber,categoryName: tokenConfirmationModel.categoryName,branchName: tokenConfirmationModel.branchName));
      //   await GlobalCache.getInstance.setTodayActiveTokenId(tokensIds:existingTodaysTokenId );
      //   print("token stored after setting ${GlobalCache.getInstance.getTodayActiveTokenId()}");
        
      // }
      }else if(tokenConfirmationModel.date == dateFormatter.format(tomorrow)){
        print("token is saved in tomorrow");
         final existingTomorrowsTokenId = GlobalCache.getInstance.getTomorrowActiveTokenId();
        if(!existingTomorrowsTokenId.contains(StoredTokenModel(tokenId: tokenConfirmationModel.tokenNumber,categoryName: tokenConfirmationModel.categoryName,branchName: tokenConfirmationModel.branchName))){
         existingTomorrowsTokenId.add(StoredTokenModel(tokenId: tokenConfirmationModel.tokenNumber,categoryName: tokenConfirmationModel.categoryName,branchName: tokenConfirmationModel.branchName));
        await GlobalCache.getInstance.setTomorrowActiveTokenId(tokensIds: existingTomorrowsTokenId );
      }
      }else if(tokenConfirmationModel.date == dateFormatter.format(dayAfterTomorrow)){
        print("token is saved in day after tomorrow");
        final existingThirdDaysTokenId = GlobalCache.getInstance.getThirdDayActiveTokenId();
        if(!existingThirdDaysTokenId.contains(StoredTokenModel(tokenId: tokenConfirmationModel.tokenNumber,categoryName: tokenConfirmationModel.categoryName,branchName: tokenConfirmationModel.branchName))){
         existingThirdDaysTokenId.add(StoredTokenModel(tokenId: tokenConfirmationModel.tokenNumber,categoryName: tokenConfirmationModel.categoryName,branchName: tokenConfirmationModel.branchName));
        await GlobalCache.getInstance.setThirdDayActiveTokenId(tokensIds: existingThirdDaysTokenId );
        }
      } 
 
      return Either.right(tokenConfirmationModel.toDomain());

    }on ServiceFailure catch(e){
      return Either.left(ServiceFailure(e.message.toString()));
    }
  }

}