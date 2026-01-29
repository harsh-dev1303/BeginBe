import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/data/datasource/live_queue_datasource.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/data/repository/live_queue_repo_Impl.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/domain/repository/live_queue_repo.dart';

part 'live_queue_locator.g.dart';


@riverpod
LiveQueueDatasource liveQueueDatasourceLocator(LiveQueueDatasourceLocatorRef ref){
  return LiveQueueDatasourceImpl();
}

@riverpod
LiveQueueRepo liveQueueRepoLocator(LiveQueueRepoLocatorRef ref){
  final datasource = ref.watch(liveQueueDatasourceLocatorProvider);
  return LiveQueueRepoImpl(datasource);

}