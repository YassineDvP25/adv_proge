import 'package:advancecourse/core/routing/app_router.dart';
import 'package:advancecourse/features/onbording/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter approuter;
  const DocApp({super.key, required this.approuter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        home: OnboardingScreen(),
      ),
    );
  }
}
