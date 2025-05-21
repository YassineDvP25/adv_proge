import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/core/theming/styles.dart';
import 'package:advancecourse/core/widgets/app_text_form_field.dart';
import 'package:advancecourse/features/login/ui/widgets/already_have_anaccount_text.dart';
import 'package:advancecourse/features/login/ui/widgets/app_text_button.dart';
import 'package:advancecourse/features/login/ui/widgets/login_alternative.dart';
import 'package:advancecourse/features/login/ui/widgets/text_inside_divider.dart';
import 'package:advancecourse/features/login/ui/widgets/terms_conditions_privacy_policy_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 65.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcom Back', style: TextStyles.font24blueBold),

              verticalSpace(10),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last \nlogged in.",
                style: TextStyles.font14bodyRegular,
                textAlign: TextAlign.start,
              ),
              verticalSpace(40),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    AppTextFormField(hintText: 'Email'),
                    verticalSpace(18),
                    AppTextFormField(
                      hintText: 'Password',
                      obscureText: isObscure,
                      suffixicon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon:
                            isObscure
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(10),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  'Forgot Password ?',
                  style: TextStyles.font12blueRegular,
                ),
              ),
              verticalSpace(40),
              AppTextButton(
                text: 'Login',
                textStyle: TextStyles.font16blueSemibold,
              ),
              verticalSpace(40),
              TextInsideDivider(),
              verticalSpace(20),
              LoginAlternative(),
              verticalSpace(20),
              TermsConditionsPrivacyPolicyText(),
              verticalSpace(60),
              AlreadyHaveAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
