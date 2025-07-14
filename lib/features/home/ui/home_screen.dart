import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:advancecourse/features/home/ui/widgets/doctors_list/doctors_bloc_builder_list_view.dart';
import 'package:advancecourse/features/home/ui/widgets/doctorsbluecontainer.dart';
import 'package:advancecourse/features/home/ui/widgets/home_top_bar.dart';
import 'package:advancecourse/features/home/ui/widgets/specialization_list/specialization_bloc_builder.dart';
import 'package:flutter/material.dart';

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
              SpecializationBlocBuilder(),
              verticalSpace(3),
              DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
