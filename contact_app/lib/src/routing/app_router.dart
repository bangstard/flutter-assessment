import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:contact_app/src/features/profile/presentation/edit_profile.dart';
import 'package:contact_app/src/features/profile/presentation/profile.dart';
import 'package:contact_app/src/features/contact/presentation/home_screen.dart';
import 'package:contact_app/src/routing/not_found_screen.dart';

enum AppRoute {
  home,
  favorite,
  profile,
  editProfile,
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
          routes: [
            GoRoute(
              path: 'editProfile',
              name: AppRoute.editProfile.name,
              builder: (context, state) => EditProfileScreen(),
            ),
            GoRoute(
              path: 'profile',
              name: AppRoute.profile.name,
              builder: (context, state) => const ProfileScreen(),
            ),
          ])
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
});
