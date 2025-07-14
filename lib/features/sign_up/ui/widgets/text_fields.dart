import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/core/widgets/app_text_form_field.dart';
import 'package:advancecourse/features/sign_up/logic/cubit/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpTextFields extends StatefulWidget {
  const SignUpTextFields({super.key});

  @override
  State<SignUpTextFields> createState() => _SignUpTextFieldsState();
}

class _SignUpTextFieldsState extends State<SignUpTextFields> {
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            contoller: context.read<SignUpCubit>().nameController,
            hintText: 'Username',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter a valid username';
              }
            },
          ),
          verticalSpace(12),
          AppTextFormField(
            contoller: context.read<SignUpCubit>().emailController,
            hintText: 'Email',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter a valid email';
              }
            },
          ),
          verticalSpace(12),
          AppTextFormField(
            contoller: context.read<SignUpCubit>().phoneController,
            hintText: 'Phone',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter a valid phone';
              }
            },
          ),
          verticalSpace(12),
          AppTextFormField(
            contoller: context.read<SignUpCubit>().passwordController,
            hintText: 'Password',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter a valid password';
              }
            },
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
            obscureText: isObscure,
          ),
          verticalSpace(12),
          AppTextFormField(
            contoller:
                context.read<SignUpCubit>().passwordConfirmationController,
            hintText: 'Password Confirmation',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter a valid password confirmation';
              }
            },
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
            obscureText: isObscure,
          ),
        ],
      ),
    );
  }
}
