import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:go_router/go_router.dart';
import 'screens/loading_screens.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      initialLocation: '/loading', // Başlangıç sayfası
      routes: [
        // Yükleme ekranı rotası
        GoRoute(
          path: '/loading',
          builder: (context, state) => const LoadingScreen(),
        ),
        // Ana ekran rotası
        GoRoute(
          path: '/home',
          builder: (context, state) => HomeScreen(),
        ),
      ],
    );

    return MaterialApp.router(
      title: 'Flutter App',
      theme: ThemeData(
      primaryColor : colors["onPrimary"],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerConfig: _router, // Yönlendirme yapılandırması
      debugShowCheckedModeBanner: false,
    );
  }
}
