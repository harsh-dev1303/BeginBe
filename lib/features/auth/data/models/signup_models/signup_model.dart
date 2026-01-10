
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/auth/data/models/signup_models/signup_user.dart';
import 'package:secure_fintech_bankingapp/features/auth/domain/entity/signup_entity/signup_success_entity.dart';

part 'signup_model.freezed.dart';
part 'signup_model.g.dart';

@freezed
class SignupModel with _$SignupModel{

  factory SignupModel({
     @JsonKey(name: "user") required SignupUser singUpUser,
     @JsonKey(name: "token") required String token
  })= _SignupModel;

  factory SignupModel.fromJson(Map<String,dynamic> json) => _$SignupModelFromJson(json);

  SignupModel._();

  SignupSuccessEntity toDomain(){
    return SignupSuccessEntity(
      userId: singUpUser.userId.toString(), 
      token: token
    );
  }

}