import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/core/theming/colors.dart';
import 'package:advancecourse/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        shrinkWrap: true,

        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0.0 : 19.0.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: ColorsManager.lightBlue,
                  child: Image.asset(
                    'assets/images/maindoctor.png',
                    width: 30.w,
                    height: 40.h,
                    fit: BoxFit.cover,
                  ),
                ),
                verticalSpace(10),
                Text('Speciality ', style: TextStyles.font12DarkRegular),
              ],
            ),
          );
        },
      ),
    );
  }
}
