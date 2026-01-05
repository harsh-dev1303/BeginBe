
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/auth/domain/entity/login_success_entity.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel{

  factory LoginModel({
    required String token
  }) = _LoginModel ;

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);

  LoginModel._();

  LoginSuccessEntity toDomain(){
    return LoginSuccessEntity(
      token: token
    );
  }

}