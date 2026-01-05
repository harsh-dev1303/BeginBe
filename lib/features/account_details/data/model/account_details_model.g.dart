// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountDetailsModelImpl _$$AccountDetailsModelImplFromJson(
  Map<String, dynamic> json,
) => _$AccountDetailsModelImpl(
  data: AccountData.fromJson(json['data'] as Map<String, dynamic>),
  support: AccountSupport.fromJson(json['support'] as Map<String, dynamic>),
  meta: AccountMeta.fromJson(json['_meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AccountDetailsModelImplToJson(
  _$AccountDetailsModelImpl instance,
) => <String, dynamic>{
  'data': instance.data,
  'support': instance.support,
  '_meta': instance.meta,
};
