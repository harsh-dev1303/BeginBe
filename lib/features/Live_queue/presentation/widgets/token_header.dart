//Token Header (Hero Section)
import 'package:flutter/material.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/domain/entity/live_queue_entity.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/presentation/pages/live_queue_page.dart';

class TokenHeader extends StatelessWidget {
  final LiveQueueEntity queue;
  const TokenHeader(this.queue);

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
