import 'package:go_router/go_router.dart';
import 'package:solearium/src/features/authentication/presentation/screens/login_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
