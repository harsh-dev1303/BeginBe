import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/domain/entity/geolocation.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/domain/entity/specific_branch_detail.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/presentation/controller/notifier/branch_detail_notifier.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class BranchDetailPage extends ConsumerWidget {
  final String branchId;
  const BranchDetailPage({super.key, required this.branchId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final branchDetailNotifier = ref.watch(
      BranchDetailNotifierProvider(branchId),
    );
    return Scaffold(
      appBar: AppBar(
        title: branchDetailNotifier.maybeWhen(
          data: (data) => Text(data.branchName),
          orElse: () => Text("Branch"),
        ),
        /*branchDetailNotifier.when(
          data: (data) {
            return Text(data.branchName);
          },
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => CircularProgressIndicator(),
        )*/
      ),
      body: branchDetailNotifier.when(
        data: (branchDetail) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _BranchHeader(branch: branchDetail),
                const SizedBox(height: 20),

                _InfoRow(branch: branchDetail),
                const SizedBox(height: 24),

                _OverviewSection(overview: branchDetail.overview),
                const SizedBox(height: 24),

                _LocationSection(
                  address: branchDetail.branchAddress,
                  location: branchDetail.geoLocation,
                ),
                const SizedBox(height: 32),

                _ViewCountersButton(branchDetail),
              ],
            ),
          );
        },
        error: (error, stackTrace) {
          return RefreshIndicator(
            onRefresh: () async {
              await ref
                  .watch(BranchDetailNotifierProvider(branchId).notifier)
                  .branchDetailsRefresh();
            },
            child: ListView(
              physics: AlwaysScrollableScrollPhysics(),
              children: [Center(child: Text(error.toString()))],
            ),
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

//Branch Header card
class _BranchHeader extends StatelessWidget {
  final SpecificBranchDetail branch;

  const _BranchHeader({required this.branch});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.store,
                  color: AppPallete.whiteColor,
                  size: 26,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      branch.branchName,
                      style: const TextStyle(
                        color: AppPallete.whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      branch.branchAddress,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Chip(
                backgroundColor: Colors.white12,
                side: const BorderSide(color: Colors.white24),
                labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                avatar: const Icon(
                  Icons.access_time,
                  color: AppPallete.whiteColor,
                  size: 18,
                ),
                label: Text(
                  branch.timing,
                  style: const TextStyle(
                    color: AppPallete.whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Chip(
                backgroundColor: Colors.white12,
                side: const BorderSide(color: Colors.white24),
                labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                avatar: const Icon(
                  Icons.confirmation_number,
                  color: AppPallete.whiteColor,
                  size: 18,
                ),
                label: Text(
                  'Avg Wait: ${branch.avgWaitTime}',
                  style: const TextStyle(
                    color: AppPallete.whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//Timing & Avg Wait Row
class _InfoRow extends StatelessWidget {
  final SpecificBranchDetail branch;

  const _InfoRow({required this.branch});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _InfoCard(
          icon: Icons.access_time,
          label: "Timing",
          value: branch.timing,
        ),
        const SizedBox(width: 12),
        _InfoCard(
          icon: Icons.timelapse,
          label: "Avg Wait",
          value: branch.avgWaitTime,
        ),
      ],
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoCard({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppPallete.borderColor,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppPallete.backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(icon, color: AppPallete.whiteColor),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        value,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
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
          ],
        ),
      ),
    );
  }
}

//Overview Section
class _OverviewSection extends StatelessWidget {
  final String overview;

  const _OverviewSection({required this.overview});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.borderColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Overview",
            style: TextStyle(
              color: AppPallete.whiteColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            overview,
            style: const TextStyle(color: AppPallete.greyColor, height: 1.5),
          ),
        ],
      ),
    );
  }
}

//Location Section (Map-ready)
class _LocationSection extends StatelessWidget {
  final String address;
  final Geolocation location;

  const _LocationSection({required this.address, required this.location});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Location",
          style: TextStyle(
            color: AppPallete.whiteColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),

        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: AppPallete.borderColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on, color: AppPallete.gradient2),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      address,
                      style: const TextStyle(
                        color: AppPallete.whiteColor,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.explore, color: AppPallete.gradient3),
                  const SizedBox(width: 10),
                  Text(
                    'Lat: ${location.latitude.toStringAsFixed(4)}  •  Lng: ${location.longitude.toStringAsFixed(4)}',
                    style: const TextStyle(
                      color: AppPallete.greyColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: AppPallete.gradient2,
              side: const BorderSide(color: AppPallete.gradient2),
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
            onPressed: () {
              try {
                openMap(location);
              } catch (e) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(e.toString())));
              }
            },
            child: const Text("View on Map"),
          ),
        ),
      ],
    );
  }
}

void openMap(Geolocation location) async {
  final url =
      'https://www.google.com/maps/search/?api=1&query=${location.latitude},${location.longitude}';

  openUrl(url);
}

Future<void> openUrl(String url) async {
  final uri = Uri.parse(url);

  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}

//View Counters Button

class _ViewCountersButton extends StatelessWidget {
  final SpecificBranchDetail branchDetail;
  const _ViewCountersButton(this.branchDetail);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          backgroundColor: AppPallete.gradient2,
        ),
        onPressed: () {
          context.router.push(CategoriesRoute(branchId: branchDetail.branchId));
          // navigate to counters screen
        },
        child: const Text(
          "View Counters",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
