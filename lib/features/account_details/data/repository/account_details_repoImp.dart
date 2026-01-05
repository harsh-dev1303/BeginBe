import 'package:fpdart/fpdart.dart' as Either;
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/account_details/data/datasource/account_detail_datasource.dart';
import 'package:secure_fintech_bankingapp/features/account_details/domain/entity/account_detail_entity.dart';
import 'package:secure_fintech_bankingapp/features/account_details/domain/repository/account_details_repo.dart';

class AccountDetailsRepoImp implements AccountDetailsRepo {

  final AccountDetailsDatasource accountDetailsDatasource;

  AccountDetailsRepoImp(this.accountDetailsDatasource);

  @override
  ResultEither<AccountDetailEntity> getAccountDetails(int userId) async {
    try{
      final accountDetailsModel = await accountDetailsDatasource.fetchAccountDetails(userId);
      return Either.right(accountDetailsModel.toDomain());

    }on ServiceFailure catch(e){
       return Either.left(e.message);
    }
  }

}