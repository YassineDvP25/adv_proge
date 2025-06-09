import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/features/home/logic/cubit/home_cubit.a.dart';
import 'package:advancecourse/features/home/logic/cubit/home_state.dart';
import 'package:advancecourse/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:advancecourse/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:advancecourse/features/home/ui/widgets/doctors_list_view.dart';
import 'package:advancecourse/features/home/ui/widgets/doctorsbluecontainer.dart';
import 'package:advancecourse/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:advancecourse/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20.0.w, 16.0.h, 20.0.w, 0.0.h),
          child: Column(
            children: [
              HomeTopBar(),
              Doctorsbluecontainer(),
              verticalSpace(15),
              DoctorSpecialitySeeAll(),
              verticalSpace(15),
              BlocBuilder<HomeCubit, HomeState>(
                buildWhen:
                    (previous, current) =>
                        current is SpecialazationSuccess ||
                        current is SpecialazationError ||
                        current is Specialazationloading,
                builder: (context, state) {
                  return state.maybeWhen(
                    specialazationLoading:
                        () => Column(
                          children: [
                            Center(child: CircularProgressIndicator()),
                          ],
                        ),
 
                    specialazationSuccess: (specializationsResponseModel) {
                      var specialazationDataList =
                          specializationsResponseModel.specializationDataList;

                      return Expanded(
                        child: Column(
                          children: [
                            DoctorSpecialityListView(
                              specializationsListData: specialazationDataList!,
                            ),
                            verticalSpace(15),
                            DoctorsListView(
                              doctorsList: specialazationDataList[0]?.doctorsList,
                            ),
                          ],
                        ),
                      );
                    },
                    specialazationError: (errorHandler) => SizedBox.shrink(),
                    orElse: () => SizedBox.shrink(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
        
          margin: EdgeInsets.fromLTRB(20.0.w, 16.0.h, 20.0.w, 28.0.h),
          child: Column(
          children: [
            HomeTopBar()
          ],
          
          ),
        ),
      ),
    ); 
  }
}
