import 'package:advancecourse/features/login/data/models/login_request_body.dart';
import 'package:advancecourse/features/login/data/repos/login_repo.dart';
import 'package:advancecourse/features/login/logic_cubit/cubit/login_state.dart';
import 'package:bloc/bloc.dart';




class LoginCubit extends Cubit<LoginState> {
final  LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());
  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loding());
    final result = await _loginRepo.login(loginRequestBody);
    result.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (errorHandler) {
        emit(LoginState.error(errorHandler.apiErrorModel.message ?? ''));
      },
    );
  }
}
