// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginUserModelImpl _$$LoginUserModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginUserModelImpl(
      userId: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$LoginUserModelImplToJson(
  _$LoginUserModelImpl instance,
) => <String, dynamic>{
  'id': instance.userId,
  'name': instance.name,
  'email': instance.email,
  'role': instance.role,
};
