import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/domain/entity/live_queue_entity.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/presentation/controller/notifier/live_queue_stream_notifier.dart';

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
  final String date;   //token issued date
  const LiveQueuePage({super.key, required this.tokenId, required this.date});

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
                  // 🎟 Token + Status
                  _TokenHeader(queue),

                  const SizedBox(height: 16),

                  // 📈 Progress towards service
                  _QueueProgress(
                    currentPosition: queue.currentPosition,
                    peopleAhead: queue.peopleAhead,
                  ),

                  const SizedBox(height: 20),

                  // 🕒 Status timeline
                  _StatusTimeline(currentStatus: queue.currentStatus),

                  const SizedBox(height: 20),

                  // 📊 Queue metrics
                  _MetricTile(
                    icon: Icons.flag,
                    label: "Current Status",
                    value: queue.currentStatus,
                    valueColor: statusColor(queue.currentStatus),
                  ),
                  _MetricTile(
                    icon: Icons.group,
                    label: "People Ahead",
                    value: queue.peopleAhead,
                  ),
                  _MetricTile(
                    icon: Icons.confirmation_number,
                    label: "Your Position",
                    value: queue.currentPosition,
                  ),
                  _MetricTile(
                    icon: Icons.schedule,
                    label: "Estimated Time",
                    value: "${queue.estimatedWaitTime} min",
                  ),
                  _MetricTile(
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

                  // 🔘 Actions
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
                        child: _GradientButton(
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

//Token Header (Hero Section)
class _TokenHeader extends StatelessWidget {
  final LiveQueueEntity queue;
  const _TokenHeader(this.queue);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppPallete.gradient1, AppPallete.gradient2],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const Text(
            "TOKEN",
            style: TextStyle(
              color: Colors.white70,
              letterSpacing: 2,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            queue.tokenId,
            style: const TextStyle(
              color: AppPallete.whiteColor,
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Chip(
            backgroundColor: statusColor(queue.currentStatus),
            labelPadding: const EdgeInsets.symmetric(horizontal: 8),
            avatar: Icon(
              statusIcon(queue.currentStatus),
              color: AppPallete.whiteColor,
            ),
            label: Text(
              queue.currentStatus,
              style: const TextStyle(
                color: AppPallete.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Progress indicator showing relative position
class _QueueProgress extends StatelessWidget {
  final String currentPosition;
  final String peopleAhead;
  const _QueueProgress({
    required this.currentPosition,
    required this.peopleAhead,
  });

  @override
  Widget build(BuildContext context) {
    // Parse values defensively
    final int pos = int.tryParse(currentPosition) ?? 0;
    final int ahead = int.tryParse(peopleAhead) ?? 0;
    final int total = (pos + ahead).clamp(1, 100000);
    final double progress = total > 0 ? pos / total : 0.0;

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppPallete.borderColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Progress to Service",
                style: TextStyle(
                  color: AppPallete.whiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Pos $pos • Ahead $ahead",
                style: const TextStyle(
                  color: AppPallete.greyColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: progress.clamp(0.0, 1.0),
              minHeight: 10,
              color: AppPallete.gradient2,
              backgroundColor: AppPallete.backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}

// Status timeline visualization
class _StatusTimeline extends StatelessWidget {
  final String currentStatus;
  const _StatusTimeline({required this.currentStatus});

  List<String> get steps => const ["WAITING", "NEAR", "ACTIVE", "DONE"];

  @override
  Widget build(BuildContext context) {
    final idx = steps.indexWhere((s) => s == currentStatus.toUpperCase());
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppPallete.borderColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: steps.map((s) {
          final isActive = steps.indexOf(s) <= (idx == -1 ? 0 : idx);
          return Expanded(
            child: Column(
              children: [
                Icon(
                  statusIcon(s),
                  color: isActive ? statusColor(s) : AppPallete.greyColor,
                ),
                const SizedBox(height: 6),
                Text(
                  s,
                  style: TextStyle(
                    fontSize: 11,
                    color: isActive
                        ? AppPallete.whiteColor
                        : AppPallete.greyColor,
                    fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

// Modern metric tile with icon
class _MetricTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color? valueColor;
  const _MetricTile({
    required this.icon,
    required this.label,
    required this.value,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppPallete.borderColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppPallete.backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: AppPallete.whiteColor),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: AppPallete.greyColor,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(
                    color: valueColor ?? AppPallete.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Gradient primary action button to match theme
class _GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const _GradientButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppPallete.gradient1, AppPallete.gradient2],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          foregroundColor: AppPallete.whiteColor,
        ),
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.w600)),
      ),
    );
  }
}
