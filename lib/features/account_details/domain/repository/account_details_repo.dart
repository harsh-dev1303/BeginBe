import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/account_details/domain/entity/account_detail_entity.dart';

abstract class AccountDetailsRepo {
  ResultEither<AccountDetailEntity> getAccountDetails(int userId);
}