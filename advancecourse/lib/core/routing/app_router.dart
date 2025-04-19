import 'package:advancecourse/core/routing/routes.dart';
import 'package:advancecourse/features/home/ui/home_screen.dart';
import 'package:advancecourse/features/login/ui/login_screen.dart';
import 'package:advancecourse/features/onbording/onboarding_screen.dart';
import 'package:advancecourse/features/sign_up/ui/signup_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen()
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen()
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen()
        );
      default:
        return null;
    }
  }
}