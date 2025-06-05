import 'package:advancecourse/core/helpers/doctors_photos.dart';
import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  final int index;
  final Doctors doctorsModel;

  const DoctorsListViewItem({
    super.key,
    required this.doctorsModel, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    ListDoctorsPhotos docPhotos = ListDoctorsPhotos();
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Image.asset(
            docPhotos.getPhoto(index)  , // Assuming you have 5 doctor images
              width: 100.w,
              height: 100.h,
              fit: BoxFit.cover,
            ),
          ),
          horizantalSpace(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel.name ?? "Doctor",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  doctorsModel.email ?? "Email not available",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
