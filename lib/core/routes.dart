
import 'package:flutter_app/screens/about.dart';
import 'package:flutter_app/screens/cart.dart';
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
  ],
);
