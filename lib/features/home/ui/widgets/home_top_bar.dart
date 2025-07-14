import 'package:advancecourse/core/theming/colors.dart';
import 'package:advancecourse/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Yassine!', style: TextStyles.font18DarkBold),
            Text('How Are You Today?', style: TextStyles.font12GrayRegular),
          ],
        ),
        Spacer(),

        CircleAvatar(
          radius: 16.r,
          backgroundColor: ColorsManager.morLighterGray,
          child: SvgPicture.asset(
            'assets/svgs/notifications.svg',
            height: 23.h,
            width: 20.w,
          ),
        ),
      ],
    );
  }
}
