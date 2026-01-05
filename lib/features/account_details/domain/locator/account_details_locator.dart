import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/account_details/data/datasource/account_detail_datasource.dart';
import 'package:secure_fintech_bankingapp/features/account_details/data/repository/account_details_repoImp.dart';
import 'package:secure_fintech_bankingapp/features/account_details/domain/repository/account_details_repo.dart';
import 'package:secure_fintech_bankingapp/network/network_client_provider.dart';

part 'account_details_locator.g.dart';

@riverpod
Future<AccountDetailsDatasource> accountDetailsDatasourceLocator(AccountDetailsDatasourceLocatorRef ref) async {

  final networkClient = await ref.watch(networkClientProvider.future);
  return AccountDetailsDatasourceImpl(networkClient);
  
}

@riverpod
Future<AccountDetailsRepo> accountDetailsRepoLocator(AccountDetailsRepoLocatorRef ref) async {

  final datasource = await ref.watch(accountDetailsDatasourceLocatorProvider.future);
  return AccountDetailsRepoImp(datasource);

}


