import 'package:advancecourse/core/routing/app_router.dart';
import 'package:advancecourse/core/routing/routes.dart';
import 'package:advancecourse/core/theming/colors.dart';
import 'package:advancecourse/features/home/ui/home_screen.dart';
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
        home: HomeScreen(),
        initialRoute: Routes.homeScreen,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: approuter.generateRoute,
      ),
    );
  }
}
