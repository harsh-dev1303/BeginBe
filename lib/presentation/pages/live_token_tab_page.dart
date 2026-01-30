import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/security/secure_active_tokenId_manager.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/presentation/pages/live_queue_page.dart';
import 'package:secure_fintech_bankingapp/features/global_providers/global_notifiers.dart/todays_tokenId_notifier.dart';
import 'package:secure_fintech_bankingapp/features/transactions/presentation/pages/transactions_page.dart';
import 'package:secure_fintech_bankingapp/features/global_providers/providers.dart';

@RoutePage()
class LiveTokenTabPage extends ConsumerWidget {
  const LiveTokenTabPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todayTokenIdList = ref.watch(todaysTokenIdNotifierProvider);

    if (todayTokenIdList.isEmpty) {
      return Center(child: Text("No Active Token!"));
    }

    final todaysLatestTokenId = todayTokenIdList.last;

    // final date = ref.watch(liveTokenDateProvider);

    if (todaysLatestTokenId == null) {
      return Center(child: Text("No Active Token For Today!"));
    }

    return LiveQueuePage(tokenId: todaysLatestTokenId.tokenId);

    
  }
}
