import 'package:advancecourse/core/helpers/doctors_speciality.dart';
import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/core/theming/colors.dart';
import 'package:advancecourse/core/theming/styles.dart';
import 'package:advancecourse/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialazationListViewItem extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final SpecializationsData? specializationsListData;
  const DoctorSpecialazationListViewItem({
    super.key,
    required this.index,
    this.specializationsListData,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    DoctorsSpecialityPhotos doctorsSpeciality = DoctorsSpecialityPhotos();

    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0.0 : 19.0.w),
      child: Column(
        children: [
          selectedIndex == index
              ? Container(
                decoration: BoxDecoration(
                  border: Border.all(  
                    width: 2.w,                color: ColorsManager.mainBlue,
),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 27.r,
                  backgroundColor: ColorsManager.morLighterGray,
                  child: Image.asset(
                    doctorsSpeciality.getSpecialityPhoto(
                      index,
                    ), // Assuming you have 10 speciality images
                    width: 30.w,
                    height: 30.h,
                    fit: BoxFit.cover,
                  ),
                ),
              )
              : CircleAvatar(
                radius: 23.r,
                backgroundColor: ColorsManager.morLighterGray,
                child: Image.asset(
                  doctorsSpeciality.getSpecialityPhoto(
                    index,
                  ), // Assuming you have 10 speciality images
                  width: 30.w,
                  height: 30.h,
                  fit: BoxFit.cover,
                ),
              ),

          verticalSpace(8),
          Text(
            specializationsListData!.name ?? 'speciality',
            style:
                selectedIndex == index
                    ? TextStyles.font13DarkBold
                    : TextStyles.font10DarkRegular,
          ),
        ],
      ),
    );
  }
}
