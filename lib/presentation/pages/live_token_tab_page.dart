import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/features/transactions/presentation/pages/transactions_page.dart';

@RoutePage()
class LiveTokenTabPage extends ConsumerWidget {
  const LiveTokenTabPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TransactionsPage();
  }
}