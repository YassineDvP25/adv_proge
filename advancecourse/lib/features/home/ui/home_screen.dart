import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:advancecourse/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:advancecourse/features/home/ui/widgets/doctors_list_view.dart';
import 'package:advancecourse/features/home/ui/widgets/doctorsbluecontainer.dart';
import 'package:advancecourse/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20.0.w, 16.0.h, 20.0.w, 28.0.h),
          child: Column(
            children: [
              HomeTopBar(),
              Doctorsbluecontainer(),
              verticalSpace(15),
              DoctorSpecialitySeeAll(),
              verticalSpace(15),
              DoctorSpecialityListView(),
              verticalSpace(15),
              DoctorsListView()
            ],
          ),
        ),
      ),
    );
        
  }
}
