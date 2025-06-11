import 'package:advancecourse/features/home/data/repos/home_repo.dart';
import 'package:advancecourse/features/home/logic/cubit/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial());

  //specialzation
  void getSpecialazation() async {
    emit(const HomeState.specialazationLoading());
    var response = await _homeRepo.getSpecialization();
    response.when(
      success: (data) {
        emit(HomeState.specialazationSuccess(data));
      },
      failure: (error) {
        emit(HomeState.specialazationError(error));
      },
    );
  }


}
