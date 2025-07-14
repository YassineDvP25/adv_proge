import 'package:advancecourse/features/home/data/models/specialization_response_model.dart';
import 'package:advancecourse/features/home/logic/cubit/home_cubit.a.dart';
import 'package:advancecourse/features/home/logic/cubit/home_state.dart';
import 'package:advancecourse/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is DoctorSuccess || current is DoctorError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorSuccess: (doctorsList) {
            return DoctorsListView(doctorsList: doctorsList);
          },
          doctorError: (errorHandler) {
            print(
              '------------------------------Error handler1??-----------------------',
            );
            return setupError();
          },

          orElse: () {
              print(
              '------------------------------Error handler2??-----------------------',
            );
            return SizedBox.shrink();
          },
        );
      },
    );
  }
}

DoctorsListView setupSuccess(List<Doctors?>? doctorsList) {
  return DoctorsListView(doctorsList: doctorsList);
}

SizedBox setupError() {
  return SizedBox.shrink();
}
