import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:secure_fintech_bankingapp/core/router/guards/auth_guard.dart';
import 'package:secure_fintech_bankingapp/features/account_details/presentation/pages/account_details_page.dart';
import 'package:secure_fintech_bankingapp/features/profile/presentation/pages/profiles_page.dart';
import 'package:secure_fintech_bankingapp/features/settings/presentation/pages/settings_page.dart';
import 'package:secure_fintech_bankingapp/features/transactions/presentation/pages/transactions_page.dart';
import 'package:secure_fintech_bankingapp/presentation/pages/accounts_tab_page.dart';
import 'package:secure_fintech_bankingapp/presentation/pages/home_tab_page.dart';
import 'package:secure_fintech_bankingapp/presentation/pages/profile_tab_page.dart';
import 'package:secure_fintech_bankingapp/presentation/pages/transaction_tab_page.dart';
import 'package:secure_fintech_bankingapp/presentation/shell/app_shell_page.dart';
// import 'package:secure_fintech_bankingapp/features/splash/presentation/splash_page.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/signup_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/splash/presentation/splash_page.dart';
import '../../features/accounts/presentation/pages/accounts_page.dart';

part 'app_router.gr.dart';

final authGuard = AuthGuard();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/', page: SplashRoute.page, initial: true),
    AutoRoute(path: '/login', page: LoginRoute.page),
    AutoRoute(path: '/signup', page: SignupRoute.page),

    AutoRoute(
      path: '/account_details',
      page: AccountDetailsRoute.page,
      guards: [authGuard],
    ),
    AutoRoute(path: '/settings', page: SettingsRoute.page, guards: [authGuard]),

    AutoRoute(
      path: '/app',
      page: AppShellRoute.page,
      guards: [authGuard],
      children: [
        AutoRoute(path:'home',page: HomeTabRoute.page),
        AutoRoute(path: 'accounts',page: AccountsTabRoute.page),
        AutoRoute(path: 'transactions',page: TransactionTabRoute.page),
        AutoRoute(path: 'profile',page: ProfileTabRoute.page)
      ]

      )

  //   AutoRoute(path: '/home', page: HomeRoute.page, guards: [authGuard]),
  //   AutoRoute(path: '/accounts', page: AccountsRoute.page, guards: [authGuard]),
  //   AutoRoute(
  //     path: '/transactions',
  //     page: TransactionsRoute.page,
  //     guards: [authGuard],
  //   ),
  //   AutoRoute(path: '/profile', page: ProfilesRoute.page, guards: [authGuard]),
   ];
}
