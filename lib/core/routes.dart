import 'package:flutter_app/screens/about.dart';
import 'package:flutter_app/screens/cart.dart';
import 'package:flutter_app/screens/login_screen.dart';
import 'package:flutter_app/screens/profile_screen.dart';
import 'package:flutter_app/screens/register_screen.dart';
import 'package:flutter_app/screens/voice_screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/loading_screens.dart';
import "../screens/home_screen.dart";

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const About(),
    ),
    GoRoute(
      path: '/cart',
      builder: (context, state) => const Cart(),
    ),
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const LoginScreen(),
      ),
    ),
    GoRoute(
        path: '/profile',
        pageBuilder: (context, state) => NoTransitionPage<void>(
              key: state.pageKey,
              child: const ProfileScreen(),
            )),
    GoRoute(
      path: '/register',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const RegisterScreen(),
      ),
    ),
    GoRoute(
      path: '/voice',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const VoiceScreen(),
      ),
    ),
  ],
);
