

import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_queue_entity.freezed.dart';

@freezed
class LiveQueueEntity with _$LiveQueueEntity{
  factory LiveQueueEntity({
    required String tokenId,
    required String currentStatus,
    required String estimatedWaitTime,
    required String currentPosition,
    required String peopleAhead,
    required String counterStatus

  }) = _LiveQueueEntity;

}