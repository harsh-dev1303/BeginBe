import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/data/datasource/branches_datasource.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/data/repo/branch_repo_impl.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/domain/repository/branch_repo.dart';
import 'package:secure_fintech_bankingapp/features/global_providers/providers.dart';

part 'branches_locator.g.dart';

@riverpod
Future<BranchesDatasource> branchesDatasourceLocator(BranchesDatasourceLocatorRef ref)async{
  final networkClient = await ref.watch(networkClientProvider.future);
  return BranchesDatasourceImpl(networkClient);
}


@riverpod
Future<BranchRepo> branchesRepoLocator(BranchesRepoLocatorRef ref)async{
  final dataSource = await ref.watch(branchesDatasourceLocatorProvider.future);
  return BranchRepoImpl(dataSource);
}