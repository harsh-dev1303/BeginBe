// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupModelImpl _$$SignupModelImplFromJson(Map<String, dynamic> json) =>
    _$SignupModelImpl(
      userId: (json['id'] as num).toInt(),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$SignupModelImplToJson(_$SignupModelImpl instance) =>
    <String, dynamic>{'id': instance.userId, 'token': instance.token};
