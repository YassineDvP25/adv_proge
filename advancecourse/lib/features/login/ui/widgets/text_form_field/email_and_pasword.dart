import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/core/widgets/app_text_form_field.dart';
import 'package:advancecourse/features/login/logic_cubit/cubit/login_cubit.dart';
import 'package:advancecourse/features/login/ui/widgets/text_form_field/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPasword extends StatefulWidget {
  const EmailAndPasword({super.key});

  @override
  State<EmailAndPasword> createState() => _EmailAndPaswordState();
}

class _EmailAndPaswordState extends State<EmailAndPasword> {
  final bool hasLowerCase = false;
  final bool hasUpperCase = false;
  final bool hasSpecialCharacters = false;
  final bool hasMinLength = false;
  final bool hasNumber = false;
  bool isObscure = false;
  late TextEditingController passwordController;
  @override
  void initState() {
    context.read<LoginCubit>().passwordController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(
            contoller: context.read<LoginCubit>().emailController,
            hintText: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid email';
              }
            },
          ),
          verticalSpace(18),
          AppTextFormField(
            contoller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
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
          verticalSpace(24),
          PasswordValidation(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasMinLength: hasMinLength,
            hasNumber: hasNumber,
          ),
        ],
      ),
    );
  }
}
