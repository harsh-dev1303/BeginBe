import 'package:fpdart/fpdart.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/accounts/data/datasource/accounts_datasource.dart';
import 'package:secure_fintech_bankingapp/features/accounts/domain/entity/account_entity.dart';
import 'package:secure_fintech_bankingapp/features/accounts/domain/entity/accounts_entity.dart';
import 'package:secure_fintech_bankingapp/features/accounts/domain/repository/accounts_repo.dart';

class AccountRepoImpl implements AccountsRepo{
  final AccountsDatasource accountsDatasource;

  AccountRepoImpl(this.accountsDatasource);

  @override
  ResultEither<AccountsEntity> fetchAccounts() async {
    try{
      final accountModel = await accountsDatasource.fetchAccountList();
      return Either.right(accountModel.toDomain());

    } on ServiceFailure catch(e){
       return Either.left(ServiceFailure(e.message.toString()));
    }
  
  }

}