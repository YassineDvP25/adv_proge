import 'package:advancecourse/core/networking/api_error_handler.dart';
import 'package:advancecourse/core/networking/api_error_model.dart';
import 'package:advancecourse/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  //!specialization states

  const factory HomeState.specialazationLoading() = Specialazationloading;

  const factory HomeState.specialazationSuccess(
      List<SpecializationsData?>? specializationDataList

  ) = SpecialazationSuccess;

  const factory HomeState.specialazationError(ApiErrorModel errorModel) =
      SpecialazationError;
      //! Doctor states
      const factory HomeState.doctorSuccess(List<Doctors?>? doctors) = DoctorSuccess;
      const factory HomeState.doctorError( ApiErrorModel errorModel ) = DoctorError;
}
