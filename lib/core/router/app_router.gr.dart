// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AccountDetailsPage]
class AccountDetailsRoute extends PageRouteInfo<AccountDetailsRouteArgs> {
  AccountDetailsRoute({
    Key? key,
    required int userId,
    List<PageRouteInfo>? children,
  }) : super(
         AccountDetailsRoute.name,
         args: AccountDetailsRouteArgs(key: key, userId: userId),
         initialChildren: children,
       );

  static const String name = 'AccountDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AccountDetailsRouteArgs>();
      return AccountDetailsPage(key: args.key, userId: args.userId);
    },
  );
}

class AccountDetailsRouteArgs {
  const AccountDetailsRouteArgs({this.key, required this.userId});

  final Key? key;

  final int userId;

  @override
  String toString() {
    return 'AccountDetailsRouteArgs{key: $key, userId: $userId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AccountDetailsRouteArgs) return false;
    return key == other.key && userId == other.userId;
  }

  @override
  int get hashCode => key.hashCode ^ userId.hashCode;
}

/// generated route for
/// [AccountsPage]
class AccountsRoute extends PageRouteInfo<void> {
  const AccountsRoute({List<PageRouteInfo>? children})
    : super(AccountsRoute.name, initialChildren: children);

  static const String name = 'AccountsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AccountsPage();
    },
  );
}

/// generated route for
/// [AccountsTabPage]
class AccountsTabRoute extends PageRouteInfo<void> {
  const AccountsTabRoute({List<PageRouteInfo>? children})
    : super(AccountsTabRoute.name, initialChildren: children);

  static const String name = 'AccountsTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AccountsTabPage();
    },
  );
}

/// generated route for
/// [AppShellPage]
class AppShellRoute extends PageRouteInfo<void> {
  const AppShellRoute({List<PageRouteInfo>? children})
    : super(AppShellRoute.name, initialChildren: children);

  static const String name = 'AppShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppShellPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [HomeTabPage]
class HomeTabRoute extends PageRouteInfo<void> {
  const HomeTabRoute({List<PageRouteInfo>? children})
    : super(HomeTabRoute.name, initialChildren: children);

  static const String name = 'HomeTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeTabPage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [ProfileTabPage]
class ProfileTabRoute extends PageRouteInfo<void> {
  const ProfileTabRoute({List<PageRouteInfo>? children})
    : super(ProfileTabRoute.name, initialChildren: children);

  static const String name = 'ProfileTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileTabPage();
    },
  );
}

/// generated route for
/// [ProfilesPage]
class ProfilesRoute extends PageRouteInfo<void> {
  const ProfilesRoute({List<PageRouteInfo>? children})
    : super(ProfilesRoute.name, initialChildren: children);

  static const String name = 'ProfilesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilesPage();
    },
  );
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsPage();
    },
  );
}

/// generated route for
/// [SignupPage]
class SignupRoute extends PageRouteInfo<void> {
  const SignupRoute({List<PageRouteInfo>? children})
    : super(SignupRoute.name, initialChildren: children);

  static const String name = 'SignupRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignupPage();
    },
  );
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
}

/// generated route for
/// [TransactionTabPage]
class TransactionTabRoute extends PageRouteInfo<void> {
  const TransactionTabRoute({List<PageRouteInfo>? children})
    : super(TransactionTabRoute.name, initialChildren: children);

  static const String name = 'TransactionTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TransactionTabPage();
    },
  );
}

/// generated route for
/// [TransactionsPage]
class TransactionsRoute extends PageRouteInfo<void> {
  const TransactionsRoute({List<PageRouteInfo>? children})
    : super(TransactionsRoute.name, initialChildren: children);

  static const String name = 'TransactionsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TransactionsPage();
    },
  );
}
