import 'package:advancecourse/core/networking/api_error_handler.dart';
import 'package:advancecourse/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.specialazationLoading() = Specialazationloading;

  const factory HomeState.specialazationSuccess(
    SpecializationsResponseModel specializationsResponseModel
  ) = SpecialazationSuccess;
  

  const factory HomeState.specialazationError(ErrorHandler errorHandleer) =
      SpecialazationError;
}
