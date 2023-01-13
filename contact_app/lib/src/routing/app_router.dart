import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:contact_app/src/features/contact/presentation/home_screen.dart';
import 'package:contact_app/src/routing/not_found_screen.dart';

enum AppRoute {
  home,
  favorite,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.home.name,
        builder: (context, state) => const HomeScreen(),
      )
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
});
