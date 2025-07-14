import 'package:advancecourse/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:advancecourse/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:advancecourse/features/sign_up/logic/cubit/cubit/sign_up_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';



class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(SignUpState.initial());


  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
      
  final formKey = GlobalKey<FormState>();

  void emitSignUpStates() async {
    emit(const SignUpState.loding());
    final result = await _signUpRepo.signUp(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: '0',
      ),
    );
    result.when(
      success: (data) {
        emit(SignUpState.success(data));
      },
      failure: (apiErrorModel) {
        emit(
          SignUpState.error( apiErrorModel),
        );
      },
    );
  }
}
