import 'package:advancecourse/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final Widget? suffixicon;
  final TextStyle? hintStyle;
  final InputBorder? enableBorder;
  final InputBorder? focusedBorder;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final TextEditingController contoller;

  const AppTextFormField({
    required this.contoller,
    this.validator,

    super.key,
    this.contentPadding,
    required this.hintText,
    this.suffixicon,
    this.hintStyle,
    this.enableBorder,
    this.focusedBorder,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: contoller,
      decoration: InputDecoration(
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: Colors.red, width: 1.3),
        ),
        isDense: true,

        contentPadding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 14.0.w),
        hintStyle: hintStyle ?? TextStyle(color: Colors.grey, fontSize: 11.0.sp),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: ColorsManager.mainGray, width: 0.8),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: ColorsManager.mainBlue, width: 2.3),
        ),
        suffixIcon: suffixicon,
        hintText: hintText,
        filled: true,
        fillColor: ColorsManager.lighterGray,
      ),
      obscureText: obscureText ?? false,

      style: TextStyle(color: Colors.black, fontSize: 13.0.sp),
    );
  }
}
