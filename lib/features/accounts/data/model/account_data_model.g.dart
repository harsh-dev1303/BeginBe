// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountDataModelImpl _$$AccountDataModelImplFromJson(
  Map<String, dynamic> json,
) => _$AccountDataModelImpl(
  userId: (json['id'] as num).toInt(),
  linkedEmail: json['email'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  profileUrl: json['avatar'] as String,
);

Map<String, dynamic> _$$AccountDataModelImplToJson(
  _$AccountDataModelImpl instance,
) => <String, dynamic>{
  'id': instance.userId,
  'email': instance.linkedEmail,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'avatar': instance.profileUrl,
};
