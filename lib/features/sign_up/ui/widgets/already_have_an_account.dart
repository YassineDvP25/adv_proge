import 'package:advancecourse/core/helpers/extentions.dart';
import 'package:advancecourse/core/routing/routes.dart';
import 'package:advancecourse/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Already have an account ?',
          style: TextStyles.font11Regularblack,
          children: [
            TextSpan(
              text: ' Login',
              style: TextStyle(color: Colors.blue),
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      context.pushNamed(Routes.loginScreen);
                      // Handle sign-in tap
                    },
            ),
          ],
        ),
      ),
    );
  }
}
