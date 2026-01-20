
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/data/datasource/branch_detail_datasource.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/data/repository/branch_detail_repo_impl.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/domain/repository/branch_detail_repo.dart';
import 'package:secure_fintech_bankingapp/network/network_client_provider.dart';

part 'branch_detail_locator.g.dart';

@riverpod
Future<BranchDetailDatasource> branchDataSournceLocator(BranchDataSournceLocatorRef ref) async {
  final networkClient = await ref.watch(networkClientProvider.future);
  return BranchDetailDatasourceImpl(networkClient);
}

@riverpod
Future<BranchDetailRepo> branchDetailRepoLocator(BranchDetailRepoLocatorRef ref)async{
  final datasource = await ref.watch(branchDataSournceLocatorProvider.future);
  return BranchDetailRepoImpl(datasource);
  
}