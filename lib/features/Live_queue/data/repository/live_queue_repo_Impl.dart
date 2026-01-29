import 'package:fpdart/fpdart.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/data/datasource/live_queue_datasource.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/domain/entity/live_queue_entity.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/domain/repository/live_queue_repo.dart';

class LiveQueueRepoImpl implements LiveQueueRepo{
  final LiveQueueDatasource liveQueueDatasource;

  LiveQueueRepoImpl(this.liveQueueDatasource);
  @override
  ResultEither2<LiveQueueEntity> liveQueueStream(String tokenId) async* {
    try{
      await for(final model in liveQueueDatasource.liveQueue(tokenId)){
        yield Either.right(model.toDomain());
      }

    }on ServiceFailure catch(e){
      yield Either.left(ServiceFailure(e.message.toString()));
    }
  }

}