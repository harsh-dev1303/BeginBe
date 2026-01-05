import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/accounts/domain/entity/account_entity.dart';
import 'package:secure_fintech_bankingapp/features/accounts/domain/entity/accounts_entity.dart';

abstract class AccountsRepo {
  ResultEither<AccountsEntity> fetchAccounts();

}