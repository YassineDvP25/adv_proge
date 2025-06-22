import 'package:advancecourse/core/helpers/extentions.dart';
import 'package:advancecourse/core/networking/api_error_model.dart';
import 'package:advancecourse/core/routing/routes.dart';
import 'package:advancecourse/core/theming/colors.dart';
import 'package:advancecourse/core/theming/styles.dart';
import 'package:advancecourse/features/login/logic_cubit/cubit/login_cubit.dart';
import 'package:advancecourse/features/login/logic_cubit/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
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
          error: (apiErrorModel) {
            return setupErrorState(context, apiErrorModel);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}

setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
  context.pop();
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        icon: Icon(Icons.error, color: Colors.red, size: 32),
        content: Text( apiErrorModel.getAllErrorMessages() , style: TextStyles.font15DarkBlueMedium),
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
