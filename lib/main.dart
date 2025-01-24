import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'core/themes.dart';
import 'screens/loading_screens.dart';
import 'screens/home_screen.dart'; // Ana Sayfa ekranı
import 'screens/hakkında.dart';   // Hakkında ekranı
import 'screens/sepet.dart';      // Sepet ekranı

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      initialLocation: '/loading',
      routes: [
        GoRoute(
          path: '/loading',
          builder: (context, state) => const LoadingScreen(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/about',       // Hakkında ekranı
          builder: (context, state) =>  const Hakkinda(),
        ),
        GoRoute(
          path: '/cart',        // Sepet ekranı
          builder: (context, state) =>  const Sepet(),
        ),
      ],
    );

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp.router(
          title: 'Flutter App',
          themeMode: themeProvider.isDark ? ThemeMode.dark : ThemeMode.light,
          theme: lightTheme,
          darkTheme: darkTheme,
          routerConfig: _router,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
