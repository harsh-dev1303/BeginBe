
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/core/cache/global_cache.dart';
import 'package:secure_fintech_bankingapp/core/security/secure_token_manager.dart';
import 'package:secure_fintech_bankingapp/features/auth/domain/locator/auth_locator.dart';
import 'package:secure_fintech_bankingapp/features/auth/presentation/controller/state/auth_state.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {

  @override
  AuthState build(){
     return AuthState.initial();
  }

  Future<void> signUp({
    required String name,
    required String email,
    required String password
  }) async {
    print("signup in notifier");
    state = AuthState.loading();

    try{
      final repo = await ref.watch(authRepositoryLocatorProvider.future);
      final result = await repo.singUp(name: name,email: email, password: password);
      result.fold(
        (failure){
          print("signup failure(iin notifier):${failure.toString()}");
          state = AuthState.error(failure.message.toString());
        }, 
        (success){
          print("signup successfull(in notifier)");
          state = AuthState.signupSuccess();
        }
        );
      
    }catch(e){
      print("error in auth repo calling:${e.toString()}");
      state = AuthState.error(e.toString());

    }

  }

  Future<void> login({
    required String email,
    required String password
  }) async {

    state = AuthState.loading();

    try{
      final repo = await ref.watch(authRepositoryLocatorProvider.future);
      final result = await repo.login(email: email, password: password);

      result.fold(
        (failure){
          state = AuthState.error(failure.message.toString());
        }, 
        (success){ 
          state = AuthState.authenticated();
          }
        );

    }catch(e){
      state= AuthState.error(e.toString());

    }

  }

  Future<void> logout() async {
    state = AuthState.loading();
    // await GlobalCache.getInstance.setToken(authToken: null);
    await SecureTokenManager.deleteTokens();
    final accessToken = await SecureTokenManager.getAccessToken();
    if(accessToken == null){
     state = AuthState.unauthenticated();
    }else{
      state = AuthState.error("Unable to logout");
    }
  }

  //whole app's central place for managing safe navigation
  Future<void> checkSession() async {
    final tokenState = await SecureTokenManager.getAccessToken();

    if(tokenState == null){
      state = AuthState.unauthenticated();
    }else{
      state = AuthState.authenticated();
    }
  }

}