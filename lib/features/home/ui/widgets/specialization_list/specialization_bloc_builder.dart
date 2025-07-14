import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/features/home/logic/cubit/home_cubit.a.dart';
import 'package:advancecourse/features/home/logic/cubit/home_state.dart';
import 'package:advancecourse/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:advancecourse/features/home/ui/widgets/doctors_shimmer_loading.dart';
import 'package:advancecourse/features/home/ui/widgets/specialization_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationBlocBuilder extends StatelessWidget {
  const SpecializationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is SpecialazationSuccess ||
              current is SpecialazationError ||
              current is Specialazationloading,
      builder: (context, state) {
        return state.maybeWhen(
          specialazationLoading:
              () => setupLoading(),

          specialazationSuccess: (specializationDataList) {
            var specialazationDataList = specializationDataList;

            return DoctorSpecialityListView(
              specializationsListData: specialazationDataList!,
            );
          },
          specialazationError: (errorHandler) => SizedBox.shrink(),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}

Widget setupLoading() {
  return Expanded(child: Column(children: [


    const SpecialityShimmerLoading()
    , verticalSpace(10),
    const DoctorsShimmerLoading()
  ]));
}
