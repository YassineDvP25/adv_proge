import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/core/theming/styles.dart';
import 'package:advancecourse/core/widgets/app_text_button.dart';
import 'package:advancecourse/features/login/ui/widgets/login_alternative.dart';
import 'package:advancecourse/features/login/ui/widgets/text_inside_divider.dart';
import 'package:advancecourse/features/sign_up/logic/cubit/cubit/sign_up_cubit.dart';
import 'package:advancecourse/features/sign_up/ui/widgets/already_have_an_account.dart';
import 'package:advancecourse/features/sign_up/ui/widgets/sign_up_bloc_lestener.dart';
import 'package:advancecourse/features/sign_up/ui/widgets/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcom Back', style: TextStyles.font24blueBold),
                verticalSpace(10),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our\ncommunity!",
                  style: TextStyles.font14bodyRegular,
                  textAlign: TextAlign.start,
                ),
                verticalSpace(20),

                Column(
                  children: [
                    SignUpTextFields(),
                    verticalSpace(30),
                    AppTextButton(
                      onPressed: () {
                        validationDoSignUp(context);
                      },
                      text: 'SignUp',
                      textStyle: TextStyles.font16blueSemibold,
                    ),
                    verticalSpace(34),
                    TextInsideDivider(text: 'Or Sign Up with'),
                    verticalSpace(20),
                    LoginAlternative(),

                    verticalSpace(40),
                    AlreadyHaveAnAccount(),
                  ],
                ),
                SignUpBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

validationDoSignUp(BuildContext context) {
  if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
    context.read<SignUpCubit>().emitSignUpStates();
  }
}
