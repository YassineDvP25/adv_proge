
import 'package:advancecourse/core/helpers/doctors_photos.dart';
import 'package:advancecourse/core/helpers/extentions.dart';
import 'package:advancecourse/core/networking/api_error_model.dart';
import 'package:advancecourse/features/home/data/models/specialization_response_model.dart';
import 'package:advancecourse/features/home/data/repos/home_repo.dart';
import 'package:advancecourse/features/home/logic/cubit/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial());
  List<SpecializationsData?>? specializationDataList = [];
  ListDoctorsPhotos listDoctorsPhotos = ListDoctorsPhotos();

  //specialzation
  void getSpecialazation() async {
    emit(const HomeState.specialazationLoading());
    var response = await _homeRepo.getSpecialization();
    response.when(
      success: (data) {
        specializationDataList = data.specializationDataList ?? [];
        getDoctorList(specialazationId: specializationDataList!.first!.id);
        emit(HomeState.specialazationSuccess(specializationDataList));
      },
      failure: (ApiErrorModel apiErrorModel) {
        emit(HomeState.specialazationError(apiErrorModel));
      },
    );
  }

  void getDoctorList({required int? specialazationId}) {
    List<Doctors?>? doctorsListfiltring = getDoctorListBySpecializationId(
      specialazationId,
    );

    if (!doctorsListfiltring.isNullOrEmpty()) {
      emit(HomeState.doctorSuccess(doctorsListfiltring));
    } else {
    
    }
  }

  List<Doctors?>? getDoctorListBySpecializationId(specialazationId) {
    return specializationDataList!
        .firstWhere((list) => list!.id == specialazationId)!
        .doctorsList;
  }
}
