// Status timeline visualization
import 'package:flutter/material.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/presentation/pages/live_queue_page.dart';

class StatusTimeline extends StatelessWidget {
  final String currentStatus;
  const StatusTimeline({required this.currentStatus});

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