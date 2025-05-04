import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/core/theming/colors.dart';
import 'package:advancecourse/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInsideDivider extends StatelessWidget {
  const TextInsideDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: ColorsManager.mainGray,
                        thickness: 0.5,
                        endIndent: 4.w,
                        indent: 4.w,
                      ),
                    ),
                    horizantalSpace(10),

                    Text(
                      'Or Sign in with',
                      style: TextStyles.font12RegularGray,
                    ),
                    horizantalSpace(10),
                    Expanded(
                      child: Divider(
                        color: ColorsManager.mainGray,
                        thickness: 0.5,
                        endIndent: 4.w,
                                                indent: 4.w,

                      ),
                    ),
                  ],
                );
  }
}