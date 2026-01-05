import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:secure_fintech_bankingapp/core/cache/global_cache.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';
import 'package:secure_fintech_bankingapp/core/security/secure_token_manager.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  FutureOr<void> onNavigation(NavigationResolver resolver, StackRouter router) async {

    // final token = GlobalCache.getInstance.getToken();
    final token = await SecureTokenManager.getAccessToken();
    if(token == null){
      router.replace(const LoginRoute());
    }else{
      resolver.next(true);
    }

  }
}
