import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/core/widgets/app_text_form_field.dart';
import 'package:advancecourse/features/login/logic_cubit/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPasword extends StatefulWidget {
  const EmailAndPasword({super.key});

  @override
  State<EmailAndPasword> createState() => _EmailAndPaswordState();
}

class _EmailAndPaswordState extends State<EmailAndPasword> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid email';
              }
            },
            hintText: 'Email',
            contoller: context.read<LoginCubit>().emailController,
          ),
          verticalSpace(12),
          AppTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
            hintText: 'Password',
            obscureText: false,
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
            contoller: context.read<LoginCubit>().passwordController,
          ),
          verticalSpace(24),
        ],
      ),
    );
  }
}
