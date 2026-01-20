// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_date_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecificDateTokenImpl _$$SpecificDateTokenImplFromJson(
  Map<String, dynamic> json,
) => _$SpecificDateTokenImpl(
  date: json['date'] as String,
  queueLength: json['queueLength'] as String,
  peopleAhead: json['peopleAhead'] as String,
  estimatedWaitTime: json['estimatedWaitTime'] as String,
);

Map<String, dynamic> _$$SpecificDateTokenImplToJson(
  _$SpecificDateTokenImpl instance,
) => <String, dynamic>{
  'date': instance.date,
  'queueLength': instance.queueLength,
  'peopleAhead': instance.peopleAhead,
  'estimatedWaitTime': instance.estimatedWaitTime,
};
