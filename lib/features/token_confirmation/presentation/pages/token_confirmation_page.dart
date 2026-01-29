import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/presentation/controller/notifier/token_confirmation_notifier.dart';
import 'package:secure_fintech_bankingapp/network/network_client_provider.dart';

@RoutePage()
class TokenConfirmationPage extends ConsumerWidget {
  final String categoryId;
  final String date;
  const TokenConfirmationPage({
    super.key,
    required this.categoryId,
    required this.date,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tokenConfirmation = ref.watch(
      tokenConfirmationNotifierProvider(categoryId, date),
    );
    return Scaffold(
      appBar: AppBar(title: Text("Token Confirmation")),
      body: tokenConfirmation.when(
        data: (tokenConfirm) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🎉 Token Highlight Card
                _TokenHighlightCard(tokenNumber: tokenConfirm.tokenNumber),

                const SizedBox(height: 24),

                // 🏥 Service Info
                _InfoRow(label: "Service", value: tokenConfirm.branchName),
                _InfoRow(label: "Counter", value: tokenConfirm.categoryName),

                const SizedBox(height: 16),

                // ⏱ Queue Info
                _InfoRow(
                  label: "Estimated Wait",
                  value: "${tokenConfirm.estimatedWaitTime} min",
                ),
                _InfoRow(
                  label: "People Ahead",
                  value: tokenConfirm.peopleAhead,
                ),

                const Spacer(),

                // 👉 CTA
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppPallete.gradient2,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      ref.read(liveTokenDateProvider.notifier).state = tokenConfirm.date;
                      context.router.replaceAll(
                        [AppShellRoute(
                         initialIndex: 2,
                         children: [
                          LiveTokenTabRoute()
                         ]
                      )]
                      );
                    },
                    child: const Text(
                      "Go to Live Queue",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppPallete.whiteColor,
                      ),
                    ),
                  ),
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
                    tokenConfirmationNotifierProvider(
                      categoryId,
                      date,
                    ).notifier,
                  )
                  .retryTokenConfirm();
            },
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

//Token Highlight Card (Hero element)
class _TokenHighlightCard extends StatelessWidget {
  final String tokenNumber;

  const _TokenHighlightCard({required this.tokenNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 28),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppPallete.gradient1, AppPallete.gradient2],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const Text(
            "Your Token",
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 8),
          Text(
            tokenNumber,
            style: const TextStyle(
              color: AppPallete.whiteColor,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}

//Info Row (Reusable)
class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppPallete.borderColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(color: AppPallete.greyColor, fontSize: 13),
          ),
          Text(
            value,
            style: const TextStyle(
              color: AppPallete.whiteColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
