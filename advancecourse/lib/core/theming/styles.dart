import 'package:advancecourse/core/theming/colors.dart';
import 'package:advancecourse/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font32BlackBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
    fontFamily: 'Inter',
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 38.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
    fontFamily: 'FjallaOne',
  );

  static TextStyle font13Gray = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.mainGray,
    fontFamily: 'PlayfairDisplay',
  );
  static TextStyle font16whiteBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
    fontFamily: 'Inter',
  );
  static TextStyle font14bodyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.mainGray,
    fontFamily: 'Inter',
  );
  static TextStyle font12blueRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.mainBlue,
    fontFamily: 'Inter',
  );
  static TextStyle font24blueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.black,
    color: Colors.blue,
    fontFamily: 'Inter',
  );
  static TextStyle font16blueSemibold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semibold,
    color: Colors.white,
    fontFamily: 'Inter',
  );
  static TextStyle font10RegularGray = TextStyle(
    color: ColorsManager.moreGray,
    fontSize: 10.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeightHelper.regular,
    height: 1.50,
  );
  static TextStyle font11Regularblack = TextStyle(
    color: Colors.black,
    fontSize: 11.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeightHelper.regular,
    height: 1.50,
  );
  static TextStyle font12RegularGray = TextStyle(

    color: ColorsManager.moreGray,
    fontSize: 12.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeightHelper.regular,
    height: 1.50,
  );
  static TextStyle font15DarkBlueMedium = TextStyle(
    color: ColorsManager.moreGray,
    fontSize: 15.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeightHelper.medium,
  );
    static TextStyle font14BlueSemiBold = TextStyle(
    color: ColorsManager.mainBlue,
    fontSize: 14.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeightHelper.semibold,
  );
}
