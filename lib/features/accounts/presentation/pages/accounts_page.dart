import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';
import 'package:secure_fintech_bankingapp/features/accounts/presentation/controller/notifier/account_notifier.dart';

@RoutePage()
class AccountsPage extends ConsumerWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accountState = ref.watch(accountNotifierProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Accounts")),
      body: accountState.when(
        data: (accountListClass) {
          final accountList = accountListClass.accounts;
          if (accountList.isEmpty) {
            return RefreshIndicator(
              onRefresh: () async {
                print("account data onrefreash running");
                await ref.read(accountNotifierProvider.notifier).refresh();
              },
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                   SizedBox(height: 200),
                  Center(child: Text("No accounts available yet!"))
                  ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              await ref.read(accountNotifierProvider.notifier).refresh();
            },
            child: ListView.separated(
              itemCount: accountList.length,
              separatorBuilder: (_, _) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final account = accountList[index];

                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: account.profileUrl.isNotEmpty
                        ? NetworkImage(account.profileUrl)
                        : null,

                    child: account.profileUrl.isEmpty
                        ? const Icon(Icons.person)
                        : null,
                  ),
                  title: Text("${account.firstName}" + "${account.lastName}"),
                  subtitle: Text(account.linkedEmail),
                  trailing: Text(
                    "₹${account.userId}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    context.router.push(AccountDetailsRoute(userId: account.userId));
                  },
                );
              },
            ),
          );
        },
        error: (error, StackTrace) => Center(
          child: RefreshIndicator(
            onRefresh: () async {
              print("error in accounts: ${error.toString()}");
              await ref.read(accountNotifierProvider.notifier).refresh();
            },
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                const SizedBox(height: 200),
                Center(
                  child: Text(error.toString(), textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
        ),
        loading: () => Center(
          child: RefreshIndicator(
            onRefresh: () async {
              await ref.read(accountNotifierProvider.notifier).refresh();
            },
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
