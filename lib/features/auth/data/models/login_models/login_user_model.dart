import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user_model.freezed.dart';
part 'login_user_model.g.dart';

@freezed
class LoginUserModel with _$LoginUserModel{

  factory LoginUserModel({
    @JsonKey(name: "id") required String userId,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "role") required String role,
  }) = _LoginUserModel;

  factory LoginUserModel.fromJson(Map<String,dynamic> json) => _$LoginUserModelFromJson(json);

}