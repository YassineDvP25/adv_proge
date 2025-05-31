import 'package:advancecourse/core/routing/app_router.dart';
import 'package:advancecourse/core/routing/routes.dart';
import 'package:advancecourse/core/theming/colors.dart';
import 'package:advancecourse/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter approuter;
  const DocApp({super.key, required this.approuter}); 

  @override
  Widget build(BuildContext context) { 
    final size = MediaQuery.of(context).size;
    final deviceHeight = size.height;
    final deviceWidth = size.width;
    return ScreenUtilInit(
      designSize: Size(deviceWidth, deviceHeight),
      minTextAdapt: true,

      child: MaterialApp(
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: OnboardingScreen(),
        initialRoute: Routes.onBoardingScreen,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: approuter.generateRoute,
      ),
    );
  }
}
