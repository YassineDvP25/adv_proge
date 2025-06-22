import 'package:advancecourse/core/helpers/shared_pref_helper.dart';
import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Doctorsbluecontainer extends StatelessWidget {
  const Doctorsbluecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            width: double.infinity,
            height: 155.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/home_blue_pattern.png'),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: TextStyles.font18WhiteMedium,
                  textAlign: TextAlign.start,
                ),
                verticalSpace(15),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      SharedPrefHelper.clearAllSecuredData();
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 10.h,
                      ),
                    ),
                    child: Text(
                      'Find Nearby',
                      style: TextStyles.font16BlueSemibold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 6.w,
            top: 0,
            bottom: 0,

            child: Image.asset(
              'assets/images/home_doctor.png',
              width: 150.w,
              height: 150.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
