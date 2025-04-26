import 'package:advancecourse/core/theming/colors.dart';
import 'package:advancecourse/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  


  static TextStyle font32BlackBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
      fontFamily: 'FjallaOne'

  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 38.sp,
    fontWeight:  FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
    fontFamily: 'FjallaOne'
  );
  static TextStyle font13Gray = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.mainGray,
    fontFamily: 'PlayfairDisplay'
  );
  static TextStyle font16whiteBold = TextStyle(
    fontSize: 16.sp,
    fontWeight:  FontWeightHelper.bold,
    color: Colors.white,
    fontFamily: 'Inter'

  );
  static TextStyle font24blueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight:  FontWeightHelper.bold,
    color: Colors.white,
    fontFamily: 'Inter'

  );
}
