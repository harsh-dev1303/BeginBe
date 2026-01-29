// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_queue_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LiveQueueModelImpl _$$LiveQueueModelImplFromJson(Map<String, dynamic> json) =>
    _$LiveQueueModelImpl(
      tokenId: json['tokenId'] as String,
      currentStatus: json['currentStatus'] as String,
      estimatedWaitTime: json['estimatedWaitTime'] as String,
      currentPosition: json['currentPosition'] as String,
      peopleAhead: json['peopleAhead'] as String,
      counterStatus: json['counterStatus'] as String,
    );

Map<String, dynamic> _$$LiveQueueModelImplToJson(
  _$LiveQueueModelImpl instance,
) => <String, dynamic>{
  'tokenId': instance.tokenId,
  'currentStatus': instance.currentStatus,
  'estimatedWaitTime': instance.estimatedWaitTime,
  'currentPosition': instance.currentPosition,
  'peopleAhead': instance.peopleAhead,
  'counterStatus': instance.counterStatus,
};
