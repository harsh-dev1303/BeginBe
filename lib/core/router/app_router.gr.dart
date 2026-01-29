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
/// [AppShellPage]
class AppShellRoute extends PageRouteInfo<AppShellRouteArgs> {
  AppShellRoute({
    Key? key,
    required int initialIndex,
    List<PageRouteInfo>? children,
  }) : super(
         AppShellRoute.name,
         args: AppShellRouteArgs(key: key, initialIndex: initialIndex),
         initialChildren: children,
       );

  static const String name = 'AppShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AppShellRouteArgs>();
      return AppShellPage(key: args.key, initialIndex: args.initialIndex);
    },
  );
}

class AppShellRouteArgs {
  const AppShellRouteArgs({this.key, required this.initialIndex});

  final Key? key;

  final int initialIndex;

  @override
  String toString() {
    return 'AppShellRouteArgs{key: $key, initialIndex: $initialIndex}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AppShellRouteArgs) return false;
    return key == other.key && initialIndex == other.initialIndex;
  }

  @override
  int get hashCode => key.hashCode ^ initialIndex.hashCode;
}

/// generated route for
/// [BranchDetailPage]
class BranchDetailRoute extends PageRouteInfo<BranchDetailRouteArgs> {
  BranchDetailRoute({
    Key? key,
    required String branchId,
    List<PageRouteInfo>? children,
  }) : super(
         BranchDetailRoute.name,
         args: BranchDetailRouteArgs(key: key, branchId: branchId),
         initialChildren: children,
       );

  static const String name = 'BranchDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BranchDetailRouteArgs>();
      return BranchDetailPage(key: args.key, branchId: args.branchId);
    },
  );
}

class BranchDetailRouteArgs {
  const BranchDetailRouteArgs({this.key, required this.branchId});

  final Key? key;

  final String branchId;

  @override
  String toString() {
    return 'BranchDetailRouteArgs{key: $key, branchId: $branchId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BranchDetailRouteArgs) return false;
    return key == other.key && branchId == other.branchId;
  }

  @override
  int get hashCode => key.hashCode ^ branchId.hashCode;
}

/// generated route for
/// [BranchesPage]
class BranchesRoute extends PageRouteInfo<BranchesRouteArgs> {
  BranchesRoute({
    Key? key,
    required String serviceId,
    List<PageRouteInfo>? children,
  }) : super(
         BranchesRoute.name,
         args: BranchesRouteArgs(key: key, serviceId: serviceId),
         initialChildren: children,
       );

  static const String name = 'BranchesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BranchesRouteArgs>();
      return BranchesPage(key: args.key, serviceId: args.serviceId);
    },
  );
}

class BranchesRouteArgs {
  const BranchesRouteArgs({this.key, required this.serviceId});

  final Key? key;

  final String serviceId;

  @override
  String toString() {
    return 'BranchesRouteArgs{key: $key, serviceId: $serviceId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BranchesRouteArgs) return false;
    return key == other.key && serviceId == other.serviceId;
  }

  @override
  int get hashCode => key.hashCode ^ serviceId.hashCode;
}

/// generated route for
/// [CategoriesPage]
class CategoriesRoute extends PageRouteInfo<CategoriesRouteArgs> {
  CategoriesRoute({
    Key? key,
    required String branchId,
    List<PageRouteInfo>? children,
  }) : super(
         CategoriesRoute.name,
         args: CategoriesRouteArgs(key: key, branchId: branchId),
         initialChildren: children,
       );

  static const String name = 'CategoriesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CategoriesRouteArgs>();
      return CategoriesPage(key: args.key, branchId: args.branchId);
    },
  );
}

class CategoriesRouteArgs {
  const CategoriesRouteArgs({this.key, required this.branchId});

  final Key? key;

  final String branchId;

  @override
  String toString() {
    return 'CategoriesRouteArgs{key: $key, branchId: $branchId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CategoriesRouteArgs) return false;
    return key == other.key && branchId == other.branchId;
  }

  @override
  int get hashCode => key.hashCode ^ branchId.hashCode;
}

/// generated route for
/// [HistoryTabPage]
class HistoryTabRoute extends PageRouteInfo<void> {
  const HistoryTabRoute({List<PageRouteInfo>? children})
    : super(HistoryTabRoute.name, initialChildren: children);

  static const String name = 'HistoryTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HistoryTabPage();
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
/// [LiveQueuePage]
class LiveQueueRoute extends PageRouteInfo<LiveQueueRouteArgs> {
  LiveQueueRoute({
    Key? key,
    required String tokenId,
    required String date,
    List<PageRouteInfo>? children,
  }) : super(
         LiveQueueRoute.name,
         args: LiveQueueRouteArgs(key: key, tokenId: tokenId, date: date),
         initialChildren: children,
       );

  static const String name = 'LiveQueueRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LiveQueueRouteArgs>();
      return LiveQueuePage(
        key: args.key,
        tokenId: args.tokenId,
        date: args.date,
      );
    },
  );
}

class LiveQueueRouteArgs {
  const LiveQueueRouteArgs({
    this.key,
    required this.tokenId,
    required this.date,
  });

  final Key? key;

  final String tokenId;

  final String date;

  @override
  String toString() {
    return 'LiveQueueRouteArgs{key: $key, tokenId: $tokenId, date: $date}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LiveQueueRouteArgs) return false;
    return key == other.key && tokenId == other.tokenId && date == other.date;
  }

  @override
  int get hashCode => key.hashCode ^ tokenId.hashCode ^ date.hashCode;
}

/// generated route for
/// [LiveTokenTabPage]
class LiveTokenTabRoute extends PageRouteInfo<void> {
  const LiveTokenTabRoute({List<PageRouteInfo>? children})
    : super(LiveTokenTabRoute.name, initialChildren: children);

  static const String name = 'LiveTokenTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LiveTokenTabPage();
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
/// [TokenConfirmationPage]
class TokenConfirmationRoute extends PageRouteInfo<TokenConfirmationRouteArgs> {
  TokenConfirmationRoute({
    Key? key,
    required String categoryId,
    required String date,
    List<PageRouteInfo>? children,
  }) : super(
         TokenConfirmationRoute.name,
         args: TokenConfirmationRouteArgs(
           key: key,
           categoryId: categoryId,
           date: date,
         ),
         initialChildren: children,
       );

  static const String name = 'TokenConfirmationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TokenConfirmationRouteArgs>();
      return TokenConfirmationPage(
        key: args.key,
        categoryId: args.categoryId,
        date: args.date,
      );
    },
  );
}

class TokenConfirmationRouteArgs {
  const TokenConfirmationRouteArgs({
    this.key,
    required this.categoryId,
    required this.date,
  });

  final Key? key;

  final String categoryId;

  final String date;

  @override
  String toString() {
    return 'TokenConfirmationRouteArgs{key: $key, categoryId: $categoryId, date: $date}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TokenConfirmationRouteArgs) return false;
    return key == other.key &&
        categoryId == other.categoryId &&
        date == other.date;
  }

  @override
  int get hashCode => key.hashCode ^ categoryId.hashCode ^ date.hashCode;
}

/// generated route for
/// [TokenPreviewPage]
class TokenPreviewRoute extends PageRouteInfo<TokenPreviewRouteArgs> {
  TokenPreviewRoute({
    Key? key,
    required String categoryId,
    List<PageRouteInfo>? children,
  }) : super(
         TokenPreviewRoute.name,
         args: TokenPreviewRouteArgs(key: key, categoryId: categoryId),
         initialChildren: children,
       );

  static const String name = 'TokenPreviewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TokenPreviewRouteArgs>();
      return TokenPreviewPage(key: args.key, categoryId: args.categoryId);
    },
  );
}

class TokenPreviewRouteArgs {
  const TokenPreviewRouteArgs({this.key, required this.categoryId});

  final Key? key;

  final String categoryId;

  @override
  String toString() {
    return 'TokenPreviewRouteArgs{key: $key, categoryId: $categoryId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TokenPreviewRouteArgs) return false;
    return key == other.key && categoryId == other.categoryId;
  }

  @override
  int get hashCode => key.hashCode ^ categoryId.hashCode;
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
