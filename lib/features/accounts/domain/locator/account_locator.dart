
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/accounts/data/datasource/accounts_datasource.dart';
import 'package:secure_fintech_bankingapp/features/accounts/data/repository/account_repo_Impl.dart';
import 'package:secure_fintech_bankingapp/features/accounts/domain/repository/accounts_repo.dart';
import 'package:secure_fintech_bankingapp/network/network_client_provider.dart';

part 'account_locator.g.dart';

@riverpod
Future<AccountsDatasource> accountsDatasourceLocator(AccountsDatasourceLocatorRef ref) async {
  final networkClient = await ref.watch(networkClientProvider.future);
  return AccountsDatasourceImpl(networkClient);
}

@riverpod
Future<AccountsRepo> accountsRepoLocator(AccountsRepoLocatorRef ref) async {
  final datasource = await ref.watch(accountsDatasourceLocatorProvider.future);
  return AccountRepoImpl(datasource);
}