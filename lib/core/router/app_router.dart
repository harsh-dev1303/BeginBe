import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:secure_fintech_bankingapp/core/router/guards/auth_guard.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/presentation/pages/live_queue_page.dart';
import 'package:secure_fintech_bankingapp/features/account_details/presentation/pages/account_details_page.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/presentation/pages/categories_page.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/presentation/pages/branch_detail_page.dart';
import 'package:secure_fintech_bankingapp/features/profile/presentation/pages/profiles_page.dart';
import 'package:secure_fintech_bankingapp/features/service_branch/presentation/pages/branches_page.dart';
import 'package:secure_fintech_bankingapp/features/settings/presentation/pages/settings_page.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/presentation/pages/token_confirmation_page.dart';
import 'package:secure_fintech_bankingapp/features/token_preview/presentation/pages/token_preview_page.dart';
import 'package:secure_fintech_bankingapp/features/transactions/presentation/pages/transactions_page.dart';
import 'package:secure_fintech_bankingapp/presentation/pages/history_tab_page.dart';
import 'package:secure_fintech_bankingapp/presentation/pages/home_tab_page.dart';
import 'package:secure_fintech_bankingapp/presentation/pages/profile_tab_page.dart';
import 'package:secure_fintech_bankingapp/presentation/pages/live_token_tab_page.dart';
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
    AutoRoute(path: '/branch',page: BranchesRoute.page),
    AutoRoute(path: '/category',page: CategoriesRoute.page),
    AutoRoute(path: '/branch_detail',page: BranchDetailRoute.page),
    AutoRoute(path: '/token_preview',page:TokenPreviewRoute.page),
    AutoRoute(path: '/token_confirmation',page:TokenConfirmationRoute.page),

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
        AutoRoute(path: 'history',page: HistoryTabRoute.page),
        AutoRoute(path: 'LiveToken',page: LiveTokenTabRoute.page),
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
