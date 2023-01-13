import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:contact_app/src/routing/app_router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) => 'My Contacts',
      theme: ThemeData(
        primaryColor: Colors.grey[200],
        primaryColorLight: const Color.fromRGBO(235, 248, 246, 1),
        primaryColorDark: const Color.fromRGBO(50, 186, 165, 1),
        fontFamily: 'Raleway',
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(50, 186, 165, 1),
          foregroundColor: Colors.white,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromRGBO(50, 186, 165, 1),
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
