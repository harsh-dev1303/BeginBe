
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_success_entity.freezed.dart';

@freezed
class LoginSuccessEntity with _$LoginSuccessEntity {

  factory LoginSuccessEntity({
    required String token
  }) = _LoginSuccessEntity ;

}