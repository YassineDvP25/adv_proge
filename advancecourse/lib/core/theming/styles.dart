import 'package:advancecourse/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  


  static TextStyle font32BlackBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
      fontFamily: 'FjallaOne'

  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 38.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainBlue,
    fontFamily: 'FjallaOne'
  );
  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.mainGray,
    fontFamily: 'PlayfairDisplay'
  );
  static TextStyle font16whiteBoldRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'Inter'

  );
}
