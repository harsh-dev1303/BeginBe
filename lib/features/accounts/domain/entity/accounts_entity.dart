
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/accounts/domain/entity/account_entity.dart';

part 'accounts_entity.freezed.dart';

@freezed
class AccountsEntity with _$AccountsEntity{

  factory AccountsEntity({
    @JsonKey(name: "data") required List<AccountEntity> accounts
  }) = _AccountsEntity ;

}