import 'dart:math';

class ListDoctorsPhotos {
  List<String> doctorsPhotos = [
    'assets/images/doctors/doc5.png',

    'assets/images/doctors/doc1.PNG',
    'assets/images/doctors/doc2.PNG',
    'assets/images/doctors/doc3.png',
    'assets/images/doctors/doc4.png',
    'assets/images/doctors/doc6.png',
    'assets/images/doctors/doc7.png',
    'assets/images/doctors/doc8.png',
    'assets/images/doctors/doc9.png',
    'assets/images/doctors/doc10.png',
    'assets/images/doctors/doc11.png',
  ];
late List<String> _shuffledPhotos;

  ListDoctorsPhotos() {
    _shuffledPhotos = List.from(doctorsPhotos)..shuffle(Random());
  }

  /// تُعيد صورة حسب الفهرس
  String getPhoto(int index) {
    if (index < 0 || index >= _shuffledPhotos.length) {
      return doctorsPhotos[index  ]; // صورة افتراضية
    }
    return _shuffledPhotos[index];
  }

  // String getPhoto(int index) {
  //   if (index < 0 || index >= doctorsPhotos.length) {
  //     return doctorsPhotos[2]; // Default image if index is out of range
  //   }
  //   return doctorsPhotos[index];
  // }
}
