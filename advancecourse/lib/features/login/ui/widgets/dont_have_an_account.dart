import 'package:advancecourse/core/helpers/extentions.dart';
import 'package:advancecourse/core/routing/app_router.dart';
import 'package:advancecourse/core/routing/routes.dart';
import 'package:advancecourse/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'don\'t have an account?',
          style: TextStyles.font11Regularblack,
          children: [
            TextSpan(
              text: ' Sign Up',
              style: TextStyle(color: Colors.blue),
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      context.pushNamed(Routes.signUpScreen);
                      // Handle sign-in tap
                    },
            ),
          ],
        ),
      ),
    );
  }
}
