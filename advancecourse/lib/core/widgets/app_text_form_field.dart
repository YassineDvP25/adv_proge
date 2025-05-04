import 'package:advancecourse/core/theming/colors.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final Widget? suffixicon;
  final TextStyle? hintStyle;
  final InputBorder? enableBorder;
  final InputBorder? focusedBorder;
  final bool? obscureText;

  const AppTextFormField({
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
      decoration: InputDecoration(
        isDense: true,

        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
        hintStyle: hintStyle ?? TextStyle(color: Colors.grey, fontSize: 16.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
        ),
        suffixIcon: suffixicon,
        hintText: hintText,
        filled: true,
        fillColor: ColorsManager.lighterGray,
      ),
      obscureText: obscureText ?? false,

      style: TextStyle(color: Colors.black, fontSize: 16.0),
    );
  }
}
