import 'package:advancecourse/core/theming/styles.dart';
import 'package:advancecourse/features/onboarding/widgets/doc_getstarted_button.dart';
import 'package:advancecourse/features/onboarding/widgets/doc_image_and_text.dart';
import 'package:advancecourse/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            
            DocLogoAndName(),
            SizedBox(height: 50.h),

            DocImageAndText(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointment easily with Docdoc to get a new experience.',
                    style: TextStyles.font13GrayRegular,
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 40.h),

                  GetstartedButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
