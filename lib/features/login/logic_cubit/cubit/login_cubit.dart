import 'package:advancecourse/core/helpers/constants.dart';
import 'package:advancecourse/core/helpers/shared_pref_helper.dart';
import 'package:advancecourse/core/networking/api_factory.dart';
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
      success: (data) async {
    await    saveUserToken(data.data!.token!);
        emit(LoginState.success(data));
      },
      failure: (apiErrorModel) {
        emit(
          LoginState.error(apiErrorModel),
        );
      },
    );
  }

  Future<void> saveUserToken(String userToken) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, userToken);
    DioFactory.addDioHeaderAfterLogin(userToken);
  }
}
