import 'package:airtrip/auth/auth_page.dart';
import 'package:airtrip/screens/onboarding.dart';
import 'package:airtrip/screens/sign_up_screen.dart';
import 'package:go_router/go_router.dart';

import '../auth/signi_in_or_signup.dart';
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
      path: '/authpage',
      builder: (context, state) =>   const AuthPage(),
    ),
     GoRoute(
      path: '/login_or_register',
      builder: (context, state) =>   const LoginOrRegister(),
    ),
    GoRoute(
      path: '/signin',
      builder: (context, state) =>  const SignIn(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignUp(),
    ),
  ],
);
