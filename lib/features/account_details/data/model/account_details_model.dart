import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/account_details/data/model/account_submodel/account_data.dart';
import 'package:secure_fintech_bankingapp/features/account_details/data/model/account_submodel/account_meta.dart';
import 'package:secure_fintech_bankingapp/features/account_details/data/model/account_submodel/account_support.dart';
import 'package:secure_fintech_bankingapp/features/account_details/domain/entity/account_detail_entity.dart';

part 'account_details_model.freezed.dart';
part 'account_details_model.g.dart';

@freezed
class AccountDetailsModel with _$AccountDetailsModel{

  factory AccountDetailsModel({
    @JsonKey(name: "data") required AccountData data,
    @JsonKey(name: "support") required AccountSupport support,
    @JsonKey(name: "_meta") required AccountMeta meta,
  }) = _AccountDetailsModel;

  factory AccountDetailsModel.fromJson(Map<String,dynamic> json) => _$AccountDetailsModelFromJson(json);

  AccountDetailsModel._();

  AccountDetailEntity toDomain(){
    return AccountDetailEntity(
      id: data.id , 
      email: data.email, 
      firstName: data.firstName, 
      lastName: data.lastName, 
      profileUrl: data.profileUrl
    );
  }

}