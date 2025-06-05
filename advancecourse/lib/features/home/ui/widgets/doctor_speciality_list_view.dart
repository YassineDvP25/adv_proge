
import 'package:advancecourse/features/home/data/models/specialization_response_model.dart';
import 'package:advancecourse/features/home/ui/widgets/doctor_specialazation_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
final  List<SpecializationsData?>  specializationsListData;
  const DoctorSpecialityListView({
    super.key,
    required this.specializationsListData,
  });

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
          );
        },
      ),
    );
  }
}
