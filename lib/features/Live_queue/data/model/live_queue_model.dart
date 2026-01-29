import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/domain/entity/live_queue_entity.dart';

part 'live_queue_model.freezed.dart';
part 'live_queue_model.g.dart';

@freezed
class LiveQueueModel with _$LiveQueueModel {
  factory LiveQueueModel({
   @JsonKey(name: "tokenId") required String tokenId,
   @JsonKey(name: "currentStatus") required String currentStatus,
   @JsonKey(name: "estimatedWaitTime") required String estimatedWaitTime,
   @JsonKey(name: "currentPosition") required String currentPosition,
   @JsonKey(name: "peopleAhead") required String peopleAhead,
   @JsonKey(name: "counterStatus") required String counterStatus,
  }) = _LiveQueueModel;

  factory LiveQueueModel.fromJson(Map<String,dynamic> json) => _$LiveQueueModelFromJson(json);

  LiveQueueModel._();

  LiveQueueEntity toDomain(){
    return LiveQueueEntity(
      tokenId: tokenId, 
      currentStatus: currentStatus, 
      estimatedWaitTime: estimatedWaitTime, 
      currentPosition: currentPosition, 
      peopleAhead: peopleAhead, 
      counterStatus: counterStatus
      
    );
  }
}
