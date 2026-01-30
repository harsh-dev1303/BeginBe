
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/token_preview/data/datasource/token_preview_datasource.dart';
import 'package:secure_fintech_bankingapp/features/token_preview/data/repository/token_preview_repo_Impl.dart';
import 'package:secure_fintech_bankingapp/features/token_preview/domain/repository/token_preview_repo.dart';
import 'package:secure_fintech_bankingapp/features/global_providers/providers.dart';

part 'token_preview_locator.g.dart';

@riverpod
Future<TokenPreviewDatasource> tokenPreviewDatasourceLocator(TokenPreviewDatasourceLocatorRef ref)async{
   final networkClient = await ref.watch(networkClientProvider.future);
   return TokenPreviewDatasourceImpl(networkClient);
}


@riverpod
Future<TokenPreviewRepo> tokenPreviewRepoLocator(TokenPreviewRepoLocatorRef ref)async{
   final datasource = await ref.watch(tokenPreviewDatasourceLocatorProvider.future);
   return TokenPreviewRepoImpl(datasource);
}