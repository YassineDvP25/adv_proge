import 'package:advancecourse/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? borderRedius;
  final Color? backgroundColor;
  final Color? textColor;
  final double? horizontalPading;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String text;
  final TextStyle? textStyle;

  const AppTextButton({
    super.key,
    this.onPressed,
    this.borderRedius,
    this.backgroundColor,
    this.textColor,
    this.horizontalPading,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight, required this.text,  required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRedius ?? 16.0),
          ),
        ),
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? ColorsManager.mainBlue,
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPading ?? 12.w,
            vertical: verticalPadding ?? 14.h,
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(buttonWidth?.w ?? double.maxFinite, buttonWidth ?? 50.h),
        ),
      ),

      child: Text(text, style: textStyle),
    );
  }
}
