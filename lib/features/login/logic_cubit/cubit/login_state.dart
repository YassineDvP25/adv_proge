import 'package:advancecourse/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'login_state.freezed.dart';
@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loding() = Loading;
  const factory LoginState.success(T data) =
      Success<T>;
  const factory LoginState.error(ApiErrorModel apiErrorModel) = Error;
}
