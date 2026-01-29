import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';
import 'package:secure_fintech_bankingapp/features/token_preview/domain/entity/specific_date_detail.dart';
import 'package:secure_fintech_bankingapp/features/token_preview/presentation/controller/notifier/token_preview_notifier.dart';

@RoutePage()
class TokenPreviewPage extends ConsumerStatefulWidget {
  final String categoryId;
  const TokenPreviewPage({super.key, required this.categoryId});

  @override
  ConsumerState<TokenPreviewPage> createState() => _TokenPreviewPageState();
}

class _TokenPreviewPageState extends ConsumerState<TokenPreviewPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    print('TokenPreviewPage build called');
    final tokenPreview = ref.watch(
      tokenPreviewNotifierProvider(widget.categoryId),
    );

    return Scaffold(
      appBar: AppBar(title: const Text("Token Preview")),
      body: tokenPreview.when(
        data: (tokenPreviewEntity) {
          final getSpecificPreview = tokenPreviewEntity.preview[selectedIndex];
          print("getSpecificPreview :${getSpecificPreview}");
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header card with category + branch
                _HeaderCard(
                  title: tokenPreviewEntity.categoryName,
                  subtitle: tokenPreviewEntity.branchName,
                ),

                const SizedBox(height: 16),

                // Date selector
                _DateSelector(
                  previews: tokenPreviewEntity.preview,
                  selectedIndex: selectedIndex,
                  onSelected: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),

                const SizedBox(height: 20),

                // Preview data (metrics)
                _PreviewInfoCard(
                  label: "Queue Length",
                  value: "${getSpecificPreview.queueLength}",
                ),
                _PreviewInfoCard(
                  label: "People Ahead",
                  value: "${getSpecificPreview.peopleAhead}",
                ),
                _PreviewInfoCard(
                  label: "Estimated Wait Time",
                  value: "${getSpecificPreview.estimatedWaitTime} min",
                ),

                const SizedBox(height: 24),

                // Generate Token button
                _GradientButton(
                  text: "Generate Token",
                  onPressed: () {
                    context.router.push(
                      TokenConfirmationRoute(
                        categoryId: tokenPreviewEntity.categoryId,
                        date: getSpecificPreview.date,
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
        error: (error, stacktrace) {
          return RefreshIndicator(
            child: ListView(
              physics: AlwaysScrollableScrollPhysics(),
              children: [Center(child: Text(error.toString()))],
            ),
            onRefresh: () async {
              await ref
                  .read(
                    tokenPreviewNotifierProvider(widget.categoryId).notifier,
                  )
                  .retryTokenPreview;
            },
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class _DateSelector extends StatelessWidget {
  final List<SpecificDateDetail> previews;
  final int selectedIndex;
  final Function(int) onSelected;

  const _DateSelector({
    required this.previews,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: List.generate(previews.length, (index) {
        final isSelected = index == selectedIndex;
        return ChoiceChip(
          label: Text(previews[index].date),
          selected: isSelected,
          labelStyle: TextStyle(
            color: isSelected ? AppPallete.whiteColor : AppPallete.greyColor,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
          selectedColor: AppPallete.gradient2,
          backgroundColor: AppPallete.borderColor,
          side: const BorderSide(color: Colors.white24),
          onSelected: (_) => onSelected(index),
        );
      }),
    );
  }
}

class _PreviewInfoCard extends StatelessWidget {
  final String label;
  final String value;

  const _PreviewInfoCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    IconData _iconForLabel(String l) {
      switch (l) {
        case 'Queue Length':
          return Icons.format_list_numbered;
        case 'People Ahead':
          return Icons.group;
        case 'Estimated Wait Time':
          return Icons.schedule;
        default:
          return Icons.info_outline;
      }
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.borderColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppPallete.backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(_iconForLabel(label), color: AppPallete.whiteColor),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: const TextStyle(
                    color: AppPallete.whiteColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  label,
                  style: const TextStyle(
                    color: AppPallete.greyColor,
                    fontSize: 12,
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

// Gradient primary action button
class _HeaderCard extends StatelessWidget {
  final String title;
  final String subtitle;
  const _HeaderCard({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppPallete.gradient1, AppPallete.gradient2],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.confirmation_number,
              color: AppPallete.whiteColor,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: AppPallete.whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const _GradientButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
