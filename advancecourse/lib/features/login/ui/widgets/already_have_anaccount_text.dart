import 'package:advancecourse/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Already have an account?',
          style: TextStyles.font11Regularblack,
          children: [
            TextSpan(
              text: ' Sign Up',
              style: TextStyle(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // Handle sign-in tap
                },
            ),
          ],
        ),
      ),
    );
  }
}