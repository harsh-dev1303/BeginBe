// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_confirmation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenConfirmationModelImpl _$$TokenConfirmationModelImplFromJson(
  Map<String, dynamic> json,
) => _$TokenConfirmationModelImpl(
  tokenNumber: json['tokenNumber'] as String,
  categoryId: json['categoryId'] as String,
  categoryName: json['categoryName'] as String,
  branchName: json['branchName'] as String,
  estimatedWaitTime: json['estimatedWaitTime'] as String,
  peopleAhead: json['peopleAhead'] as String,
  date: json['date'] as String,
);

Map<String, dynamic> _$$TokenConfirmationModelImplToJson(
  _$TokenConfirmationModelImpl instance,
) => <String, dynamic>{
  'tokenNumber': instance.tokenNumber,
  'categoryId': instance.categoryId,
  'categoryName': instance.categoryName,
  'branchName': instance.branchName,
  'estimatedWaitTime': instance.estimatedWaitTime,
  'peopleAhead': instance.peopleAhead,
  'date': instance.date,
};
