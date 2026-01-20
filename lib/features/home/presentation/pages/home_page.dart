import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/constants/app_assets.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';
import 'package:secure_fintech_bankingapp/features/auth/presentation/controller/notifier/auth_notifier.dart';
import 'package:secure_fintech_bankingapp/features/home/domain/entity/single_service_entity.dart';
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

            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _ProfileHeader(),
                  const SizedBox(height: 20),

                  const ActiveTokenCard(), // conditional later
                  const SizedBox(height: 24),

                  CategoriesSection(servicesList: servicesList,),
                  const SizedBox(height: 24),

                  const QueueHistorySection(),
                ],
              ),
            );
            //ListView.separated(
            //   itemCount: servicesList.length,
            //   separatorBuilder: (_, _) => Divider(height: 1),
            //   itemBuilder: (bContext, index){
            //     final service = servicesList[index];
            //     return ListTile(
            //       leading: CircleAvatar(child: Icon(Icons.business)),
            //       title: Text(
            //         service.serviceName,
            //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //       ),
            //       trailing: Icon(Icons.arrow_forward_ios),
            //       onTap: () {
            //         context.router.push(BranchesRoute(serviceId: service.serviceId));
            //       },
            //     );
            //   },
            // );
          },
          error: (error, StackTrace) {
            print("home Page error:$error");
            return Center(
              child: RefreshIndicator(
                onRefresh: () async {
                  print("error in accounts: ${error.toString()}");
                  await ref
                      .read(homeServicesNotifierProvider.notifier)
                      .refresh();
                },
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: 200),
                    Center(
                      child: Text(
                        error.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          loading: () {
            print("home page loading running");
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

//profile Header
class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 26,
          backgroundColor: AppPallete.gradient2,
          child: Icon(Icons.person, color: Colors.white),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Hello, Harsh",
              style: TextStyle(
                color: AppPallete.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Welcome back",
              style: TextStyle(color: AppPallete.greyColor, fontSize: 13),
            ),
          ],
        ),
      ],
    );
  }
}

//Active Token Card
class ActiveTokenCard extends StatelessWidget {
  const ActiveTokenCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppPallete.gradient1, AppPallete.gradient2],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Your Active Token",
            style: TextStyle(color: Colors.white70, fontSize: 12),
          ),
          const SizedBox(height: 8),

          const Text(
            "Token #A12",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              _TokenInfo(label: "Status", value: "WAITING"),
              _TokenInfo(label: "Ahead", value: "4"),
              _TokenInfo(label: "ETA", value: "15 min"),
            ],
          ),

          const SizedBox(height: 16),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppPallete.whiteColor,
                foregroundColor: AppPallete.gradient2,
              ),
              onPressed: () {},
              child: const Text("Go to Live Queue"),
            ),
          ),
        ],
      ),
    );
  }
}

class _TokenInfo extends StatelessWidget {
  final String label;
  final String value;

  const _TokenInfo({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ],
    );
  }
}

//Categories Section (Horizontal)
class CategoriesSection extends StatelessWidget {
  final List<SingleServiceEntity> servicesList;
  const CategoriesSection({super.key,required this.servicesList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Services",
          style: TextStyle(
            color: AppPallete.whiteColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),

        SizedBox(
          height: 110,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (bcontext, index) {
              final service = servicesList[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                   onTap: (){
                    context.router.push(BranchesRoute(serviceId: service.serviceId));
                   },
                   child: Image.asset(
                    service.serviceName == "Hospital"
                    ? AppAssets.hospitalService
                    : AppAssets.bankService
                    ,  
                    height: 40,
                  ),
                  ),
                  
                  const SizedBox(height: 8),
                  Text(service.serviceName),
                ],
              );
            },
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemCount: servicesList.length,
          ),
        ),
      ],
    );
  }
}

class QueueHistorySection extends StatelessWidget {
  const QueueHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Recent Queues",
          style: TextStyle(
            color: AppPallete.whiteColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 12),
        _HistoryTile(),
        _HistoryTile(),
      ],
    );
  }
}

//Queue History (Summary Only)
class _HistoryTile extends StatelessWidget {
  const _HistoryTile();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.history, color: AppPallete.greyColor),
      title: Text(
        "Hospital - Token B10",
        style: TextStyle(color: AppPallete.whiteColor),
      ),
      subtitle: Text(
        "Completed",
        style: TextStyle(color: AppPallete.greyColor),
      ),
      trailing: Icon(Icons.check_circle, color: AppPallete.gradient3),
    );
  }
}
