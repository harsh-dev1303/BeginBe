import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';

@RoutePage()
class AppShellPage extends ConsumerWidget {
  const AppShellPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      routes: [
        const HomeTabRoute(),
        const HistoryTabRoute(),
        const LiveTokenTabRoute(),
        const ProfileTabRoute(),
      ],

      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'History'),
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz),
              label: 'Live Token'
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
              ),
          ],
        );
      },
    );
  }
}
