import 'package:advancecourse/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 40.w, right: 30.w),
          child: SvgPicture.asset('assets/svgs/doc_logo_low_opacity.svg'),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              stops: [0.14.h, 0.8.h],

              colors: [Colors.white, Colors.white.withValues(alpha: 0.0)],
            ),
          ),

          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 10.h,
          child: Text(
            'Best Doctor\nAppointment App',
            style: TextStyles.font32BlueBold,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
