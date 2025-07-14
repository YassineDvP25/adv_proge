import 'package:advancecourse/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsConditionsPrivacyPolicyText extends StatelessWidget {
  const TermsConditionsPrivacyPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By loging, you agree to our ',
        style: TextStyles.font12RegularGray,  
        children: [
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyle(color: Colors.black),
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    // Handle Terms & Conditions tap
                  },
          
          ),
          TextSpan(text: ' and '),
          TextSpan(
            text: 'Privacy Policy.',
            style: TextStyle(color: Colors.black),
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    // Handle Privacy Policy tap
                  },
          ),
        ],
      ),
    );
  }
}
