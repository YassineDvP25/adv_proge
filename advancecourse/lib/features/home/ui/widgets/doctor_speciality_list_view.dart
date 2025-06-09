
import 'package:advancecourse/features/home/data/models/specialization_response_model.dart';
import 'package:advancecourse/features/home/ui/widgets/doctor_specialazation_list_view_item.dart';
import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/core/theming/colors.dart';
import 'package:advancecourse/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
final  List<SpecializationsData?>  specializationsListData;
  const DoctorSpecialityListView({
    super.key,
    required this.specializationsListData,
  });
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationsListData.length,
        shrinkWrap: true,

        itemBuilder: (context, index) {
          return DoctorSpecialazationListViewItem(
            index: index,
            specializationsListData: specializationsListData[index],
        itemCount: 8,
        shrinkWrap: true,

        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0.0 : 19.0.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: ColorsManager.lightBlue,
                  child: Image.asset(
                    'assets/images/maindoctor.png',
                    width: 30.w,
                    height: 40.h,
                    fit: BoxFit.cover,
                  ),
                ),
                verticalSpace(10),
                Text('Speciality ', style: TextStyles.font12DarkRegular),
              ],
            ),
 
          );
        },
      ),
    );
  }
}
