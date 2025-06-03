import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/core/theming/styles.dart';
import 'package:advancecourse/features/login/logic_cubit/cubit/login_cubit.dart';
import 'package:advancecourse/features/login/ui/widgets/dont_have_an_account.dart';
import 'package:advancecourse/core/widgets/app_text_button.dart';
import 'package:advancecourse/features/login/ui/widgets/login_alternative.dart';
import 'package:advancecourse/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:advancecourse/features/login/ui/widgets/text_form_field/email_and_pasword.dart';
import 'package:advancecourse/features/login/ui/widgets/text_inside_divider.dart';
import 'package:advancecourse/features/login/ui/widgets/terms_conditions_privacy_policy_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                Column(
                  children: [
                    EmailAndPasword(),
                    verticalSpace(10),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyles.font12BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      onPressed: () {
                        validationDoLogin(context);
                      },
                      text: 'Login',
                      textStyle: TextStyles.font16blueSemibold,
                    ),
                    verticalSpace(40),
                    TextInsideDivider(text: 'Or Sign in with '),
                    verticalSpace(20),
                    LoginAlternative(),
                    verticalSpace(20),
                    TermsConditionsPrivacyPolicyText(),
                    verticalSpace(30),

                    DontHaveAnAccount(),
                    verticalSpace(10),
                    LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

validationDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginStates();
  }
}
