import 'package:secure_fintech_bankingapp/features/auth/data/datasource/auth_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/auth/data/repository/auth_repo_impl.dart';
import 'package:secure_fintech_bankingapp/features/auth/domain/repository/auth_repository.dart';
import 'package:secure_fintech_bankingapp/features/global_providers/providers.dart';

part 'auth_locator.g.dart';


//What NetworkClient represents
//Dio / HTTP client, Base URL, interceptors, headers, Long-lived,Rarely changes at runtime
//hence "ref.read" means   "“Give me the current instance once, I don’t care about updates.”"

@Riverpod(dependencies:[] )
Future<AuthDatasource> authDatasourceLocator(AuthDatasourceLocatorRef ref) async {
  final networkClient = await ref.watch(networkClientProvider.future);
  return AuthDatasourceImpl(networkClient);

}

@riverpod
Future<AuthRepository> authRepositoryLocator(AuthRepositoryLocatorRef ref) async {
  final authDataSource =await ref.watch(authDatasourceLocatorProvider.future);
  return AuthRepoImpl(authDataSource);
}