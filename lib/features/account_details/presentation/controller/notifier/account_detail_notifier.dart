
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/account_details/domain/entity/account_detail_entity.dart';
import 'package:secure_fintech_bankingapp/features/account_details/domain/locator/account_details_locator.dart';

part 'account_detail_notifier.g.dart';

@riverpod
class AccountDetailNotifier extends _$AccountDetailNotifier {

  Future<AccountDetailEntity> build(int userId){
    return _accountDetails(userId);
  }


  Future<AccountDetailEntity> _accountDetails(int userId) async {
    final accountDetailsProvider = await ref.watch(accountDetailsRepoLocatorProvider.future);
    final accountDetails = await accountDetailsProvider.getAccountDetails(userId);

    return accountDetails.fold(
      (failure){
        print("failur in accountNotifier fetch account:${failure.message.toString()}");
        throw Exception(failure.message.toString());
      }, 
      (success){
        print("success in accountdetail ");
        return success;
      }
      );
      

  }


  Future<void> refresh(int userId) async {
    state = AsyncLoading();
    state =await AsyncValue.guard(()=>_accountDetails(userId));    //“Run this async function safely and convert the result into AsyncData or AsyncError automatically”
  
  }



}