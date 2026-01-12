import 'package:get_it/get_it.dart';
import 'package:solearium/src/core/network/dio_client.dart';
import 'package:talker_flutter/talker_flutter.dart';

final GetIt sl = GetIt.instance;

Future<void> setupInjection() async {
  // 1. External Services (Talker, Dio, etc.)
  final talker = TalkerFlutter.init();
  sl.registerSingleton<Talker>(talker);

  // Dio
  sl.registerLazySingleton<DioClient>(() => DioClient(talker: sl()));

  // 2. Features (Auth, etc.) - Register Repositories and Blocs here
  // sl.registerLazySingleton<AuthRemoteDataSource>(...);
  // sl.registerLazySingleton<AuthRepository>(...);
  // sl.registerFactory<AuthBloc>(...);
}
