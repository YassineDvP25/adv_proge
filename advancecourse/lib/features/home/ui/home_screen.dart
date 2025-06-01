import 'package:advancecourse/core/helpers/spacing.dart';
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
            HomeTopBar()
,            Doctorsbluecontainer()
          ],
          
          ),
        ),
      ),
    ); 
  }
}
