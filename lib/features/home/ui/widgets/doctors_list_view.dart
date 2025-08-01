import 'package:advancecourse/features/home/data/models/specialization_response_model.dart';
import 'package:advancecourse/features/home/ui/widgets/doctors_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsListView({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList!.length,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(doctorsModel: doctorsList![index]! , index: index,);
        },
      ),
    );
  }
}
