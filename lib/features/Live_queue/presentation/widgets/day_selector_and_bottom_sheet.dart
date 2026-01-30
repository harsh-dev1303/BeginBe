//Day selector UI (compact & clean)
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/data/model/stored_token_info/stored_token_model.dart';
import 'package:secure_fintech_bankingapp/features/global_providers/providers.dart';

enum TokenDay { today, tomorrow, dayAfter }
class DaySelector extends StatelessWidget {
  final Function(TokenDay) onSelected;

  const DaySelector({required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _DayChip(label: "Today", onTap: () => onSelected(TokenDay.today)),
        _DayChip(label: "Tomorrow", onTap: () => onSelected(TokenDay.tomorrow)),
        _DayChip(
          label: "Day After",
          onTap: () => onSelected(TokenDay.dayAfter),
        ),
      ],
    );
  }
}

class _DayChip extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _DayChip({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: AppPallete.borderColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppPallete.whiteColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}


