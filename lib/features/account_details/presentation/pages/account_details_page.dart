import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/features/account_details/domain/entity/account_detail_entity.dart';
import 'package:secure_fintech_bankingapp/features/account_details/presentation/controller/notifier/account_detail_notifier.dart';

@RoutePage()
class AccountDetailsPage extends ConsumerWidget {
  final int userId;
  const AccountDetailsPage({super.key, required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accountDetailState = ref.watch(accountDetailNotifierProvider(userId));
    return Scaffold(
      appBar: AppBar(title: const Text("Account Details")),
      body: accountDetailState.when(
        data: (data){
          print("account detail data: ${data.firstName}");
          return _AccountDetailView(data: data,userId: userId);
        }, 
        error: (error,StackTrace){
           return RefreshIndicator(
            onRefresh: ()async{
              print("account detail error:${error}");
             await ref.read(accountDetailNotifierProvider(userId).notifier).refresh(userId);
           },
           child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              Center(
                child: Text(error.toString()),
              )
            ],
           ),
           );
        }, 
        loading: ()=>Center(
          child: CircularProgressIndicator(),
        )
        ),
    );
  }
}


class _AccountDetailView extends ConsumerWidget {
  final AccountDetailEntity data;
  final int userId;

  const _AccountDetailView({
    Key? key,
    required this.data,
    required this.userId
  }) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(accountDetailNotifierProvider(userId).notifier).refresh(userId);
      },
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Avatar
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(data.profileUrl),
            ),
      
            const SizedBox(height: 16),
      
            // Name
            Text(
              '${data.firstName} ${data.lastName}',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
      
            const SizedBox(height: 8),
      
            // Email
            Text(
              data.email,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.grey),
            ),
      
            const SizedBox(height: 24),
      
            // Info card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _InfoRow(label: 'User ID', value: data.id.toString()),
                    const Divider(),
                    _InfoRow(label: 'First Name', value: data.firstName),
                    const Divider(),
                    _InfoRow(label: 'Last Name', value: data.lastName),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

