import 'package:advancecourse/core/di/dependency_injection.dart';
import 'package:advancecourse/core/routing/routes.dart';
import 'package:advancecourse/features/home/logic/cubit/home_cubit.a.dart';
import 'package:advancecourse/features/home/ui/home_screen.dart';
import 'package:advancecourse/features/login/logic_cubit/cubit/login_cubit.dart';
import 'package:advancecourse/features/login/ui/login_screen.dart';
import 'package:advancecourse/features/onboarding/onboarding_screen.dart';
import 'package:advancecourse/features/sign_up/logic/cubit/cubit/sign_up_cubit.dart';
import 'package:advancecourse/features/sign_up/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => gitIt<LoginCubit>(),
                child: LoginScreen(),
              ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => gitIt<SignUpCubit>(),
                child: const SignUpScreen(),
              ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider<HomeCubit>(
                create: (context) => HomeCubit(gitIt())..getSpecialazation(),
                child: HomeScreen(),
              ),
        );
      default:
        return null;
    }
  }
}
