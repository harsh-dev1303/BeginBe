import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';
import 'package:secure_fintech_bankingapp/features/auth/presentation/controller/notifier/auth_notifier.dart';
import 'package:secure_fintech_bankingapp/features/home/presentation/controller/notifier/home_services_notifier.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final servicesNotifier = ref.watch(homeServicesNotifierProvider);

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
      appBar: AppBar(
        title: Text("Home Screen"),
        actions: [
          IconButton(
            onPressed: () async {
              await ref.read(authNotifierProvider.notifier).logout();
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: servicesNotifier.when(
          data: (servicesEntityClass) {
            print("home page data running..");
            final servicesList = servicesEntityClass.services;
            if (servicesList.isEmpty) {
              print("home page data is empty running..");
              return RefreshIndicator(
                onRefresh: () async {
                  await ref
                      .read(homeServicesNotifierProvider.notifier)
                      .refresh();
                },
                child: ListView(
                  physics: AlwaysScrollableScrollPhysics(),
                  children: [Center(child: Text("No Services Available yet!"))],
                ),
              );
            }

            return ListView.separated(
              itemCount: servicesList.length,
              separatorBuilder: (_, _) => Divider(height: 1),
              itemBuilder: (bContext, index){
                final service = servicesList[index];
                return ListTile(
                  leading: CircleAvatar(child: Icon(Icons.business)),
                  title: Text(
                    service.serviceName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    context.router.push(BranchesRoute(serviceId: service.serviceId));
                  },
                );
              },
            );
          },
          error: (error, StackTrace){
            print("home Page error:$error");
            return Center(
            child: RefreshIndicator(
              onRefresh: () async {
                print("error in accounts: ${error.toString()}");
                await ref.read(homeServicesNotifierProvider.notifier).refresh();
              },
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  const SizedBox(height: 200),
                  Center(
                    child: Text(error.toString(), textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          );},
          loading: () {
            print("home page loading running");
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}




//body: Padding(
      //  padding: const EdgeInsets.all(24),
        //child: Center(
          // child: Column(
          //   children: [
          //     authState.maybeWhen(
          //       loading: () => CircularProgressIndicator(),
          //       orElse: () => ElevatedButton(
          //         onPressed: () async {
          //           await ref.read(authNotifierProvider.notifier).logout();
          //         },
          //         child: Text("Logout"),
          //       ),
          //     ),
          //     const SizedBox(height: 15),
          //     ElevatedButton(
          //       onPressed: () {
          //         context.tabsRouter.setActiveIndex(1);
          //       },
          //       child: Text("Accounts"),
          //     ),
          //   ],

          //   // child: TextButton(
          //   //   onPressed: (){
          //   //      ref.read(authNotifierProvider.notifier).logout();
          //   //   },
          //   //   child: Text("Logout")),
          // ),
       // ),
     // ),
