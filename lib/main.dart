import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secure_fintech_bankingapp/core/router/app_router.dart';

import 'package:secure_fintech_bankingapp/init_dependency.dart';
import 'package:secure_fintech_bankingapp/logger_riverpod.dart';
import 'package:secure_fintech_bankingapp/startup/app_root.dart';

final appRouter = AppRouter();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initCache();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [
        LoggerRiverpod()
      ],
      child: AppRoot(),
    );
  }
}


