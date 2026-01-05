import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';
import 'package:secure_fintech_bankingapp/features/auth/presentation/controller/notifier/auth_notifier.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);

    // ref.listen(authNotifierProvider,(prev,next){      //<= listening is done in approot at root level
    //   next.whenOrNull(
    //    unauthenticated: () {
    //      context.router.replaceAll([const LoginRoute()]);
    //    },
    //    error: (mssg) {
    //      ScaffoldMessenger.of(context).showSnackBar(
    //        SnackBar(content: Text(mssg))
    //      );
    //    },
    //   );
    // });

    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            children: [
              authState.maybeWhen(
                loading: () => CircularProgressIndicator(),
                orElse: () =>
                    ElevatedButton(onPressed: () async {
                     await ref.read(authNotifierProvider.notifier).logout();
                    }, child: Text("Logout")),
              ),
              const SizedBox(height: 15),
              ElevatedButton(onPressed: (){
                context.tabsRouter.setActiveIndex(1);
              }, child: Text("Accounts"))
            ],

            // child: TextButton(
            //   onPressed: (){
            //      ref.read(authNotifierProvider.notifier).logout();
            //   },
            //   child: Text("Logout")),
          ),
        ),
      ),
    );
  }
}
