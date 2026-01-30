// Progress indicator showing relative position
import 'package:flutter/material.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';

class QueueProgress extends StatelessWidget {
  final String currentPosition;
  final String peopleAhead;
  const QueueProgress({
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
