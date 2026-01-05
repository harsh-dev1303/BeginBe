
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/accounts/data/model/account_data_model.dart';
import 'package:secure_fintech_bankingapp/features/accounts/data/model/account_meta_model.dart';
import 'package:secure_fintech_bankingapp/features/accounts/data/model/account_support_model.dart';
import 'package:secure_fintech_bankingapp/features/accounts/domain/entity/accounts_entity.dart';

part 'accounts_model.freezed.dart';
part 'accounts_model.g.dart';

@freezed
class AccountsModel with _$AccountsModel{

  factory AccountsModel({
    required int page,
    @JsonKey(name: "per_page") required int perpage,
    required int total,
    @JsonKey(name: "total_pages") required int totalPages,
    @JsonKey(name: "data") required List<AccountDataModel> accountList,
    @JsonKey(name: "support") required AccountSupportModel support,
    @JsonKey(name: "_meta") required AccountMetaModel meta
  }) = _AccountsModel;

  factory AccountsModel.fromJson(Map<String,dynamic> json) => _$AccountsModelFromJson(json);

  AccountsModel._();

  AccountsEntity toDomain(){
    return AccountsEntity(
      accounts: accountList.map((e)=>e.toDomain()).toList()
    );
  }



}