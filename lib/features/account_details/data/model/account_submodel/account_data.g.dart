// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountDataImpl _$$AccountDataImplFromJson(Map<String, dynamic> json) =>
    _$AccountDataImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      profileUrl: json['avatar'] as String,
    );

Map<String, dynamic> _$$AccountDataImplToJson(_$AccountDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.profileUrl,
    };
