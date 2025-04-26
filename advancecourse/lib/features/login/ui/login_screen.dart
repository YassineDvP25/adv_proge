import 'package:advancecourse/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Padding(padding: EdgeInsets.symmetric(horizontal: 30.w , vertical: 30.w) , child: SingleChildScrollView(

        child: Column(
          children: [
            Text('Welcom Back',style: TextStyles.font24blueBold)
          ],
        ),
      ),) ),
    );
  }
}