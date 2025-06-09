import 'package:advancecourse/features/login/data/models/login_request_body.dart';
import 'package:advancecourse/features/login/data/repos/login_repo.dart';
import 'package:advancecourse/features/login/logic_cubit/cubit/login_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loding());
    final result = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    result.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (errorHandler) {
        final message = errorHandler.apiErrorModel.message;
        emit(
          LoginState.error(message is String ? message : 'An error occurred'),
        );
      },
    );
  }
}
