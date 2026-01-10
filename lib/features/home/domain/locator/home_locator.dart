
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/home/data/datasource/home_datasource.dart';
import 'package:secure_fintech_bankingapp/features/home/data/repository/home_repo_impl.dart';
import 'package:secure_fintech_bankingapp/features/home/domain/repository/home_repo.dart';
import 'package:secure_fintech_bankingapp/network/network_client_provider.dart';

part 'home_locator.g.dart';

@riverpod
Future<HomeDatasource> homeDataSourceLocator(HomeDataSourceLocatorRef ref) async {
  final  networkClient = await ref.watch(networkClientProvider.future);
  return HomeDatasourceImp(networkClient);
}

@riverpod
Future<HomeRepo> homeRepoLocator(HomeRepoLocatorRef ref) async {
   final dataSource = await ref.watch(homeDataSourceLocatorProvider.future);
   return HomeRepoImpl(dataSource);
}

