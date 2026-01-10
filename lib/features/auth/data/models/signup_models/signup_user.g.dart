// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupUserImpl _$$SignupUserImplFromJson(Map<String, dynamic> json) =>
    _$SignupUserImpl(
      userId: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$SignupUserImplToJson(_$SignupUserImpl instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
    };
