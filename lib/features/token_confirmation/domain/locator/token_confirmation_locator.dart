
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/data/datasource/token_confirmation_datasource.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/data/repository/token_confirmation_repoImpl.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/domain/repository/token_confirmation_repo.dart';
import 'package:secure_fintech_bankingapp/features/global_providers/providers.dart';

part 'token_confirmation_locator.g.dart';

@riverpod
Future<TokenConfirmationDatasource> tokenConfirmationDatasourceLocator(TokenConfirmationDatasourceLocatorRef ref) async {
  final networkClient = await ref.watch(networkClientProvider.future);
  return TokenConfirmationDatasourceImpl(networkClient);
}


@riverpod
Future<TokenConfirmationRepo> tokenConfirmationRepoLocator(TokenConfirmationRepoLocatorRef ref) async {
  final tokenDatasource = await ref.watch(tokenConfirmationDatasourceLocatorProvider.future);
  return TokenConfirmationRepoimpl(tokenDatasource);
}