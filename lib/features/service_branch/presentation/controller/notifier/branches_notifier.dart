

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/domain/entity/service_branches_entity.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/domain/locator/branches_locator.dart';

part 'branches_notifier.g.dart';

@riverpod
class BranchesNotifier extends _$BranchesNotifier{
  
  Future<ServiceBranchesEntity> build(String serviceId)async{
    return await _fetchServices(serviceId);
  }

   Future<ServiceBranchesEntity> _fetchServices(String serviceId) async {
      final repoLocatorProvider = await ref.watch(branchesRepoLocatorProvider.future);
      final branchesList = await repoLocatorProvider.getBranches(serviceId);

      return branchesList.fold(
        (failure){
          print("failure in BranchesNotifier - ${failure.message.toString()}");
          throw Exception(failure.message.toString());
        }, 
        (success){
          print("success in BranchesNotifier - $success");
           return success;
        }
        );
   }

   Future<void> refresh() async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(()=>_fetchServices(serviceId));
   }

}