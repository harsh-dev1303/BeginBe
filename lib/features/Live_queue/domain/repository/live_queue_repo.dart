import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/domain/entity/live_queue_entity.dart';

abstract class LiveQueueRepo {
  ResultEither2<LiveQueueEntity> liveQueueStream(String tokenId);  //ResultEither2<LiveQueueEntity> = Stream<Either<Failure,LiveQueueEntity>>
}