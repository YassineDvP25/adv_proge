import 'package:advancecourse/core/helpers/extentions.dart';
import 'package:advancecourse/core/routing/routes.dart';
import 'package:advancecourse/core/theming/colors.dart';
import 'package:advancecourse/core/theming/styles.dart';

import 'package:advancecourse/features/sign_up/logic/cubit/cubit/sign_up_cubit.dart';
import 'package:advancecourse/features/sign_up/logic/cubit/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        state.whenOrNull(
          loding: () {
            return showDialog(
              context: context,
              builder:
                  (context) => Center(
                    child: CircularProgressIndicator(
                      color: ColorsManager.mainBlue,
                    ),
                  ),
            );
          },
          success: (data) {
            context.pop();
            context.pushNamedAndRemoveUntil(
              Routes.homeScreen,
              predicate: (route) => false,
            );
          },
          error: (error) {
            return setupErrorState(context, error);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}

setupErrorState(BuildContext context, String error) {
  context.pop();
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        icon: Icon(Icons.error, color: Colors.red, size: 32),
        content: Text(error, style: TextStyles.font15DarkBlueMedium),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text('GoT it', style: TextStyles.font14BlueSemiBold),
          ),
        ],
      );
    },
  );
}
