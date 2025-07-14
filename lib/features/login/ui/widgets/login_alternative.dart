import 'package:advancecourse/features/login/ui/widgets/circle_avatar_alternative.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginAlternative extends StatelessWidget {
  const LoginAlternative({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatarAlternative(svgPath: 'google_logo'),
        CircleAvatarAlternative(svgPath: 'facebouk_logo'),

        CircleAvatarAlternative(svgPath: 'apple_logo'),
      ],
    );
  }
}
