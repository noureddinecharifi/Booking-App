import 'package:airtrip/screens/onboarding.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnBoarding(),
    ),
    // GoRoute(
    //   path: '/signup',
    //   builder: (context, state) => SignupScreen(),
    // ),
    // GoRoute(
    //   path: '/home',
    //   builder: (context, state) => HomeScreen(),
    // ),
  ],
);
