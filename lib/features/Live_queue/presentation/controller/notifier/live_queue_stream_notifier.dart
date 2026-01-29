

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/domain/entity/live_queue_entity.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/domain/locator/live_queue_locator.dart';

part 'live_queue_stream_notifier.g.dart';

@riverpod
class LiveQueueStreamNotifier extends _$LiveQueueStreamNotifier{

  Stream<LiveQueueEntity> build(String tokenId) async* {
    yield*  _liveQueue(tokenId);
  }

  Stream<LiveQueueEntity> _liveQueue(String tokenId) async* {
    final repo = ref.watch(liveQueueRepoLocatorProvider);
    await for(final entity in repo.liveQueueStream(tokenId)){
      entity.fold(
        (failure){
           throw Exception(failure.message.toString());
        }, 
        (liveQueueEntity){
          state = AsyncValue.data(liveQueueEntity);
        }
        );
    }

  }

  

}