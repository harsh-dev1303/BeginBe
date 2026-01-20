
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/domain/entity/specific_branch_detail.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/domain/locator/branch_detail_locator.dart';

part 'branch_detail_notifier.g.dart';

@riverpod
class BranchDetailNotifier extends _$BranchDetailNotifier{
  
  Future<SpecificBranchDetail> build(String branchId) async {
    return await _fetchBranchDetails(branchId);
  }

  Future<SpecificBranchDetail> _fetchBranchDetails(String branchId) async {
    final branchDetailRepo = await ref.watch(branchDetailRepoLocatorProvider.future);
    final branchDetailsEither = await branchDetailRepo.fetchSpecificBranch(branchId);

    return branchDetailsEither.fold(
      (failue){
        throw Exception(failue.message.toString());
      }, 
      (branchDetails){
        return branchDetails;
      }
      );

  }

  Future<void> branchDetailsRefresh() async{
    state = AsyncValue.loading();
    state = await AsyncValue.guard(()=> _fetchBranchDetails(branchId));
  }
}