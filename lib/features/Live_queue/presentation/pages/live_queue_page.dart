import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/presentation/controller/notifier/live_queue_stream_notifier.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/presentation/widgets/day_selector_and_bottom_sheet.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/presentation/widgets/gradient_button.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/presentation/widgets/metric_tile_with_icon.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/presentation/widgets/queue_progress_indicator.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/presentation/widgets/status_timeline_visualization.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/presentation/widgets/token_header.dart';
import 'package:secure_fintech_bankingapp/features/global_providers/global_notifiers.dart/third_day_tokenId_notifier.dart';
import 'package:secure_fintech_bankingapp/features/global_providers/global_notifiers.dart/todays_tokenId_notifier.dart';
import 'package:secure_fintech_bankingapp/features/global_providers/global_notifiers.dart/tomorrows_tokenId_notifier.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/data/model/stored_token_info/stored_token_model.dart';
import 'package:secure_fintech_bankingapp/features/global_providers/providers.dart';

// Shared, high-contrast status colors for visibility and consistency
Color statusColor(String status) {
  switch (status.toUpperCase()) {
    case 'NEAR':
      return Colors.amber; // Warning/soon
    case 'ACTIVE':
      return Colors.blue; // In-progress
    case 'DONE':
      return Colors.green; // Completed
    default:
      return AppPallete.greyColor; // Unknown/neutral
  }
}

// Icon mapping for statuses
IconData statusIcon(String status) {
  switch (status.toUpperCase()) {
    case 'NEAR':
      return Icons.notifications_active;
    case 'ACTIVE':
      return Icons.play_circle_fill;
    case 'DONE':
      return Icons.check_circle;
    default:
      return Icons.hourglass_bottom;
  }
}

@RoutePage()
class LiveQueuePage extends ConsumerWidget {
  final String tokenId;
  // final String date;   //token issued date
  const LiveQueuePage({super.key, required this.tokenId, /*required this.date}*/});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final liveQueue = ref.watch(liveQueueStreamNotifierProvider(tokenId));
    return Scaffold(
      appBar: AppBar(title: const Text("Live Queue")),
      body: liveQueue.when(
        data: (queue) {
          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(liveQueueStreamNotifierProvider(tokenId));
            },
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  DaySelector(
                    onSelected: (TokenDay p1) {  
                       openTokenBottomSheet(context,ref,p1);
                    },),

                  const SizedBox(height: 16),
                  // Token + Status
                  TokenHeader(queue),

                  const SizedBox(height: 16),

                  // Progress towards service
                  QueueProgress(
                    currentPosition: queue.currentPosition,
                    peopleAhead: queue.peopleAhead,
                  ),

                  const SizedBox(height: 20),

                  //  Status timeline
                  StatusTimeline(currentStatus: queue.currentStatus),

                  const SizedBox(height: 20),

                  //  Queue metrics
                  MetricTile(
                    icon: Icons.flag,
                    label: "Current Status",
                    value: queue.currentStatus,
                    valueColor: statusColor(queue.currentStatus),
                  ),
                  MetricTile(
                    icon: Icons.group,
                    label: "People Ahead",
                    value: queue.peopleAhead,
                  ),
                  MetricTile(
                    icon: Icons.confirmation_number,
                    label: "Your Position",
                    value: queue.currentPosition,
                  ),
                  MetricTile(
                    icon: Icons.schedule,
                    label: "Estimated Time",
                    value: "${queue.estimatedWaitTime} min",
                  ),
                  MetricTile(
                    icon: Icons.store,
                    label: "Counter Status",
                    value: queue.counterStatus,
                    valueColor: statusColor(queue.counterStatus),
                  ),

                  const SizedBox(height: 12),

                  // Helper note
                  Text(
                    "Stay nearby when status is NEAR or ACTIVE to avoid missing your turn.",
                    style: TextStyle(color: AppPallete.greyColor, fontSize: 12),
                  ),

                  const SizedBox(height: 24),

                  //  Actions
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppPallete.errorColor,
                            side: const BorderSide(
                              color: AppPallete.errorColor,
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          onPressed: () {
                            // cancel token flow
                          },
                          child: const Text("Cancel Token"),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: GradientButton(
                          text: "Service Details",
                          onPressed: () {
                            // navigate to service center details
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        error: (error, StackTrace) {
          return RefreshIndicator(
            child: Center(child: Text(error.toString())),
            onRefresh: () async {
              ref.invalidate(
                liveQueueStreamNotifierProvider(tokenId),
              ); //refresh
            },
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}


//bottom sheet
void openTokenBottomSheet(
  BuildContext context,
  WidgetRef ref,
  TokenDay day,
) {

  final tokens = switch(day){
    TokenDay.today => ref.watch(todaysTokenIdNotifierProvider),
    TokenDay.tomorrow => ref.watch(tomorrowsTokenIdNotifierProvider),
    TokenDay.dayAfter => ref.watch(thirdDayTokenIdNotifierProvider)
  };
  

  showModalBottomSheet(
    context: context,
    backgroundColor: AppPallete.backgroundColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (_) {
      if (tokens.isEmpty) {
        return const Padding(
          padding: EdgeInsets.all(24),
          child: Center(
            child: Text(
              "No tokens for this day",
              style: TextStyle(color: AppPallete.greyColor),
            ),
          ),
        );
      }

      return ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: tokens.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final token = tokens[index];

          return _TokenListTile(
            token: token!,
            onTap: () {
              // set active token
              // ref.read(activeTokenIdProvider.notifier).state =
              //     token.tokenId;

              Navigator.pop(context);
            },
          );
        },
      );
    },
  );
}


class _TokenListTile extends StatelessWidget {
  final StoredTokenModel token;
  final VoidCallback onTap;

  const _TokenListTile({
    required this.token,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppPallete.borderColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppPallete.gradient2.withOpacity(0.15),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.confirmation_number,
                color: AppPallete.gradient2,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Token ${token.tokenId}",
                    style: const TextStyle(
                      color: AppPallete.whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "${token.categoryName} • ${token.branchName}",
                    style: const TextStyle(
                      color: AppPallete.greyColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: AppPallete.greyColor,
            ),
          ],
        ),
      ),
    );
  }
}


