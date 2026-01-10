
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_user.freezed.dart';
part 'signup_user.g.dart';

@freezed
class SignupUser with _$SignupUser{

  factory SignupUser({
    @JsonKey(name: "id") required String userId,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "role") required String role,
  }) = _SignupUser;

  factory SignupUser.fromJson(Map<String,dynamic> json) => _$SignupUserFromJson(json);

}
