import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';
import 'package:secure_fintech_bankingapp/features/auth/presentation/controller/notifier/auth_notifier.dart';
import 'package:secure_fintech_bankingapp/features/auth/presentation/controller/state/auth_state.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();

    // Delay provider modification until after widget build starts
    Future.microtask(() {
      ref.read(authNotifierProvider.notifier).checkSession();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AuthState>(authNotifierProvider, (prev, next) {
      next.whenOrNull(
        unauthenticated: () {
          print("unauthenticated is running");
          context.router.replaceAll([const LoginRoute()]);
        },
        authenticated: () {
          print("authenticated is running");
          context.router.replaceAll([const AppShellRoute()]);
        },
      );
    });


    print("splash screen widget ran...");
    return Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
