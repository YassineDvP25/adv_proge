import 'package:advancecourse/core/helpers/doctors_photos.dart';
import 'package:advancecourse/features/home/data/models/specialization_response_model.dart';
import 'package:advancecourse/features/home/logic/cubit/home_cubit.a.dart';
import 'package:advancecourse/features/home/ui/widgets/doctor_specialazation_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatefulWidget {
  final List<SpecializationsData?> specializationsListData;
  const DoctorSpecialityListView({
    super.key,
    required this.specializationsListData,
  });

  @override
  State<DoctorSpecialityListView> createState() =>
      _DoctorSpecialityListViewState();
}

class _DoctorSpecialityListViewState extends State<DoctorSpecialityListView> {
  int selectedSpecialazationIndex = 0;
  ListDoctorsPhotos listDoctorsPhotos = ListDoctorsPhotos();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationsListData.length,
        shrinkWrap: true,

        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedSpecialazationIndex = index;

                context.read<HomeCubit>().getDoctorList(
                  specialazationId: widget.specializationsListData[index]!.id,
                );
                print(
                  'the list is ============================= ${listDoctorsPhotos.doctorsPhotos}',
                );
              });
            },
            child: DoctorSpecialazationListViewItem(
              index: index,
              selectedIndex: selectedSpecialazationIndex,
              specializationsListData: widget.specializationsListData[index],
            ),
          );
        },
      ),
    );
  }
}
