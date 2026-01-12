import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:solearium/src/core/routing/app_router.dart';
import 'package:solearium/src/core/theme/app_theme.dart';
import 'package:talker_flutter/talker_flutter.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Solearium',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        // Wrap app with Talker wrapper for in-app logs
        return TalkerWrapper(
          talker: GetIt.I<Talker>(),
          child: child!,
        );
      },
    );
  }
}
