import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'src/core/di/injection_container.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  // Catch platform-specific errors
  FlutterError.onError = (details) {
    // Log to Talker
    if (GetIt.I.isRegistered<Talker>()) {
      GetIt.I<Talker>().handle(details.exception, details.stack);
    }
  };

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      // Setup Dependency Injection
      await setupInjection();

      // Setup Bloc Observer for Logging
      Bloc.observer = TalkerBlocObserver(talker: sl<Talker>());

      runApp(await builder());
    },
    (error, stackTrace) {
      // Catch async errors
      if (sl.isRegistered<Talker>()) {
        sl<Talker>().handle(error, stackTrace);
      }
    },
  );
}
