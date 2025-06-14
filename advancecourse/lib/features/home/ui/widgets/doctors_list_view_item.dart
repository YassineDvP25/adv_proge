// import 'package:advancecourse/core/helpers/doctors_photos.dart';
// import 'package:advancecourse/core/helpers/spacing.dart';
// import 'package:advancecourse/core/theming/styles.dart';
// import 'package:advancecourse/features/home/data/models/specialization_response_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class DoctorsListViewItem extends StatelessWidget {
//   final int index;
//   final Doctors doctorsModel;

//   const DoctorsListViewItem({
//     super.key,
//     required this.doctorsModel,
//     required this.index,
//   });

//   @override
//   Widget build(BuildContext context) {
//     ListDoctorsPhotos docPhotos = ListDoctorsPhotos();
//     return Container(
//       margin: EdgeInsets.only(bottom: 20.h),
//       child: Row(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(30.r),
//             child: Image.asset(
//               docPhotos.getPhoto(index), // Assuming you have 5 doctor images
//               width: 100.w,
//               height: 100.h,
//               fit: BoxFit.fill,
//             ),
//           ),
//           horizantalSpace(10),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   doctorsModel.name ?? "Doctor",
//                   style: TextStyles.font16BlackBold,
//                 ),
//                 verticalSpace(5),
//                 Text(doctorsModel.degree, style: TextStyles.font10bodyRegular),
//                 Text(doctorsModel.phone!), horizantalSpace(8),
//                 Text(
//                   doctorsModel.email ?? "Email not available",
//                   style: TextStyle(fontSize: 14, color: Colors.grey),
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.star, color: Colors.amber, size: 16),
//                     Text(
//                       "4.5 (4.478 reviews)",
//                       style: TextStyle(fontSize: 14, color: Colors.grey),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:advancecourse/core/helpers/doctors_photos.dart';
import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:advancecourse/core/theming/styles.dart';
import 'package:advancecourse/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  final int index;
  final Doctors doctorsModel;

  const DoctorsListViewItem({
    super.key,
    required this.doctorsModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    ListDoctorsPhotos docPhotos = ListDoctorsPhotos();
    return Container(
      padding: EdgeInsets.all(12.w),
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.asset(
              docPhotos.getPhoto(index),
              width: 80.w,
              height: 80.h,
              fit: BoxFit.cover,
            ),
          ),
          horizantalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel.name ?? "Doctor",
                  style: TextStyles.font16BlackBold,
                ),
                verticalSpace(10),
                Text(
                  doctorsModel.degree,
                  style: TextStyles.font12BlueRegular,
                ),
                verticalSpace(2),
                Row(
                  children: [
                    Icon(Icons.phone, size: 14, color: Colors.grey[600]),
                    horizantalSpace(6),
                    Text(
                      doctorsModel.phone ?? '',
                      style: TextStyles.font12DarkGreyRegular,
                    ),
                  ],
                ),
                verticalSpace(2),
                Row(
                  children: [
                    Icon(Icons.email, size: 14, color: Colors.grey[600]),
                    horizantalSpace(6),
                    Expanded(
                      child: Text(
                        doctorsModel.email ?? "Email not available",
                        style: TextStyles.font12DarkGreyRegular,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                verticalSpace(2),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    horizantalSpace(4),
                    Text(
                      "4.5 (4.478 reviews)",
                      style: TextStyles.font12GreyRegular,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

