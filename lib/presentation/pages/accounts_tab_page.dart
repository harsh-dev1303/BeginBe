import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/features/accounts/presentation/pages/accounts_page.dart';

@RoutePage()
class AccountsTabPage extends ConsumerWidget {
  const AccountsTabPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AccountsPage();
  }
}