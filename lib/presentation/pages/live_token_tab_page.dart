import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/security/secure_active_tokenId_manager.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/presentation/pages/live_queue_page.dart';
import 'package:secure_fintech_bankingapp/features/transactions/presentation/pages/transactions_page.dart';
import 'package:secure_fintech_bankingapp/network/network_client_provider.dart';

@RoutePage()
class LiveTokenTabPage extends ConsumerWidget {
  const LiveTokenTabPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tokenId = ref.watch(activetokenIdProvider);
    final date = ref.watch(liveTokenDateProvider);

    return tokenId.when(
      data: (tokenId){
        print("");
        if(tokenId != null){
          return LiveQueuePage(tokenId: tokenId,date: date ?? "N/A",);
        }else{
          return Center(
            child: Text("No Active Token!"),
          );

        }
      }, 
      error: (error,stacktrace)=>Center(
        child: Text(error.toString()),
      ), 
      loading: ()=>Center(
        child: CircularProgressIndicator(),
      )
      );
  }
}
