
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_success_entity.freezed.dart';
@freezed
class SignupSuccessEntity with _$SignupSuccessEntity{

  factory SignupSuccessEntity({
    required String userId,
    required String token
  }) = _SignupSuccessEntity ;

}