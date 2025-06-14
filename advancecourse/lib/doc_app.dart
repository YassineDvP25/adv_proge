import 'package:advancecourse/core/helpers/constants.dart';
import 'package:advancecourse/core/routing/app_router.dart';
import 'package:advancecourse/core/routing/routes.dart';
import 'package:advancecourse/core/theming/colors.dart';
  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter approuter;
  const DocApp({super.key, required this.approuter}); 

  @override
  Widget build(BuildContext context) { 
  
    return ScreenUtilInit(
      designSize: Size(375, 812),

      child: MaterialApp(
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: isLogeedInUser ? Routes.homeScreen : Routes.onBoardingScreen,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: approuter.generateRoute,
      ),
    );
  }
}
