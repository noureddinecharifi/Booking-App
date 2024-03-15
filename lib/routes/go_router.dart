import 'package:airtrip/screens/onboarding.dart';
import 'package:go_router/go_router.dart';

import '../screens/sign_in_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => OnboardingScreen(
        index: 0,
      ),
    ),
    GoRoute(
      path: '/signin',
      builder: (context, state) => const SignIn(),
    ),
    // GoRoute(
    //   path: '/home',
    //   builder: (context, state) => HomeScreen(),
    // ),
  ],
);
