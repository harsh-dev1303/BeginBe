import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/cache/global_cache.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';
import 'package:secure_fintech_bankingapp/core/security/secure_token_manager.dart';
import 'package:secure_fintech_bankingapp/features/auth/presentation/controller/notifier/auth_notifier.dart';
import 'package:secure_fintech_bankingapp/features/auth/presentation/controller/state/auth_state.dart';
import 'package:secure_fintech_bankingapp/main.dart';
import 'package:secure_fintech_bankingapp/network/network_client_provider.dart';
import 'package:secure_fintech_bankingapp/network/state/network_error.dart';

//We created AppRoot because we need:
//ConsumerStatefulWidget,ref.listen(...),Global side-effects (snackbar, dialog, logout),A context below MaterialApp
// MyApp cannot do these safely.

//What AppRoot is responsible for:
//Holds MaterialApp.router,Owns navigation context,Owns ScaffoldMessenger,Listens to global providers,Shows snackbars / dialogs,App-wide behavior
//“The operating system of the app UI”

//"ScaffoldMessenger.of(context)" doesn't work if "context" is "above MaterialApp" Because:
//ScaffoldMessenger,Navigator,Theme,MediaQuery <= All of these are created by MaterialApp

final appRouter = AppRouter();

class AppRoot extends ConsumerStatefulWidget {
  const AppRoot({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppRootState();
}

class _AppRootState extends ConsumerState<AppRoot> with WidgetsBindingObserver {
  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addObserver(this);
  // }

  // @override
  // void dispose() {
  //   WidgetsBinding.instance.removeObserver(this);
  //   super.dispose();
  // }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   super.didChangeAppLifecycleState(state);

  //   if (state == AppLifecycleState.resumed) {
  //     // App came to foreground → re-check session
  //     ref.read(authNotifierProvider.notifier).checkSession();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(size: 26),
          unselectedIconTheme: IconThemeData(size: 24),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      builder: (context, child) {
        return Consumer(
          builder: (context, ref, _) {
            ref.listen(networkErrorProvider, (prev, next) {
              if (next == null) return;

              switch (next) {
                case NetworkErrorType.noInternet:
                  print("switch no internet ran..");
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("No internet Connection")),
                  );
                  break;

                case NetworkErrorType.timeout:
                  print("switch timeout ran..");
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("request time out")));
                  break;

                case NetworkErrorType.unauthorized:
                  break;
                case NetworkErrorType.serverError:
                  print("switch server error ran..");
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Error"),
                      content: Text(next.name),
                    ),
                  );
                  break;

                case NetworkErrorType.unknown:
                  print("switch Unknown error ran..");
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Unexpected error')),
                  );
                  break;
              }
              // Reset error after handling
              // reset AFTER frame
              Future.microtask(() {
                ref.read(networkErrorProvider.notifier).state = null;
              });
            });

            ref.listen<AuthState>(authNotifierProvider, (prev, next) {
              next.whenOrNull(
                authenticated: () {
                  appRouter.replaceAll([const AppShellRoute()]);
                },
                signupSuccess: () {
                  appRouter.replaceAll([const LoginRoute()]);
                },
                unauthenticated: () {
                  appRouter.replaceAll([const LoginRoute()]);
                },
                error: (mssg) => ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                    content: Text(mssg),
                  ),
                ),
              );
            });

            // ref.listen(authNotifierProvider, (prev, next) {
            //   next.whenOrNull(
            //     authenticated: () async {
            //       final token = await SecureTokenManager.getAccessToken();
            //       print("authenticated login ran:$token");
            //       if (token != null) {
            //         print("token in login successfull:$token");
            //         appRouter.replaceAll([const AppShellRoute()]);
            //       }
            //     },
            //     unauthenticated: () {
            //       ScaffoldMessenger.of(context).showSnackBar(
            //         const SnackBar(
            //           content: Text("Session expired. Please login again"),
            //         ),
            //       );

            //         appRouter.replaceAll([const LoginRoute()]);

            //     },
            //     error: (message) {
            //       print("login page snackbar for error:${message.toString()}");
            //       ScaffoldMessenger.of(
            //         context,
            //       ).showSnackBar(SnackBar(content: Text(message)));
            //     },
            //   );
            // });
            return child!;
          },
        );
      },
    );
  }
}
