

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/home/domain/entity/services_entity.dart';
import 'package:secure_fintech_bankingapp/features/home/domain/locator/home_locator.dart';

part 'home_services_notifier.g.dart';

@riverpod
class HomeServicesNotifier extends _$HomeServicesNotifier{

  Future<ServicesEntity> build() async {
    return await _fetchServices();
  }

  Future<ServicesEntity> _fetchServices() async {
     final homeRepoProvider = await ref.watch(homeRepoLocatorProvider.future);
     final servicesList = await homeRepoProvider.serviceCenters();

     return servicesList.fold(
      (failure){
         throw Exception(failure.message.toString());
      }, 
      (success){
        print("home servies notifier success:$success");
         return success;
      }
      );

  }

  Future<void> refresh() async {
    state = AsyncLoading();
    state = await AsyncValue.guard(_fetchServices);
  }

}