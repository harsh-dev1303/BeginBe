
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/accounts/domain/entity/account_entity.dart';

part 'account_data_model.freezed.dart';
part 'account_data_model.g.dart';

@freezed
class AccountDataModel with _$AccountDataModel{

  factory AccountDataModel({
    @JsonKey(name: "id") required int userId,
    @JsonKey(name: "email") required String linkedEmail,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "avatar") required String profileUrl,
  }) = _AccountDataModel ;

  factory AccountDataModel.fromJson(Map<String,dynamic> json) => _$AccountDataModelFromJson(json);

  AccountDataModel._();

  AccountEntity toDomain(){
    return AccountEntity(
      userId: userId, 
      linkedEmail: linkedEmail, 
      firstName: firstName, 
      lastName: lastName, 
      profileUrl: profileUrl
      
    );
  }

}