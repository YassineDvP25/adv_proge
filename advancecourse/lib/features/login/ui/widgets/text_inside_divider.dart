import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/core/theming/colors.dart';
import 'package:advancecourse/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInsideDivider extends StatelessWidget {
  final String text;
  const TextInsideDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: ColorsManager.mainGray,
            thickness: 0.5.h,
            endIndent: 4.w,
            indent: 4.w,
          ),
        ),
        horizantalSpace(10),

        Text(text, style: TextStyles.font12RegularGray),
        horizantalSpace(10),
        Expanded(
          child: Divider(
            color: ColorsManager.mainGray,
            thickness: 0.5.h,
            endIndent: 4.w,
            indent: 4.w,
          ),
        ),
      ],
    );
  }
}
