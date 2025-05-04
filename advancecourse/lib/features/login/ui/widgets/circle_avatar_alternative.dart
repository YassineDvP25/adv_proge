import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CircleAvatarAlternative extends StatelessWidget {
  final String svgPath;
  final double? redius ;
  const CircleAvatarAlternative({super.key, required this.svgPath, this.redius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius:  redius ??  35.w,
      backgroundColor: Colors.white,
      child: SvgPicture.asset(
        'assets/svgs/$svgPath.svg',
        height: 45.h,
        width: 50.w,
      ),
    );
  }
}
