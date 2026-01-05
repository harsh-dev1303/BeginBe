
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/accounts/domain/entity/accounts_entity.dart';
import 'package:secure_fintech_bankingapp/features/accounts/domain/locator/account_locator.dart';

part 'account_notifier.g.dart';

@riverpod
class AccountNotifier extends _$AccountNotifier{

  Future<AccountsEntity> build() async {
    return await _fetchAccounts();
  }


  Future<AccountsEntity> _fetchAccounts() async {
    final accountListProvider = await ref.watch(accountsRepoLocatorProvider.future);
    final accountList = await accountListProvider.fetchAccounts();

    return accountList.fold(
      (failure){ 
        print("failur in accountNotifier fetch account:${failure.message.toString()}");
        throw Exception(failure.message.toString());
        }, 
      (success){ 
        print("succes in accountnotifier:${success.accounts}");
        return success;}
      );

  }

  Future<void> refresh() async {
    state = AsyncLoading();
    state = await AsyncValue.guard(_fetchAccounts);    //“Run this async function safely and convert the result into AsyncData or AsyncError automatically”
  
  }
}