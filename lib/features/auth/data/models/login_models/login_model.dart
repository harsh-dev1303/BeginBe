
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/auth/data/models/login_models/login_user_model.dart';
import 'package:secure_fintech_bankingapp/features/auth/domain/entity/login_entity/login_success_entity.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel{

  factory LoginModel({
    @JsonKey(name: "user") required LoginUserModel loginUserModel,
    @JsonKey(name: "token") required String token
  }) = _LoginModel ;

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);

  LoginModel._();

  LoginSuccessEntity toDomain(){
    return LoginSuccessEntity(
      token: token
    );
  }

}