class DoctorsSpecialityPhotos {
  List<String> doctorsSpecialityPhotos = [
    'assets/images/specialities/speciality1.png',
    'assets/images/specialities/speciality2.png',
    'assets/images/specialities/speciality3.png',
    'assets/images/specialities/speciality4.png',
    'assets/images/specialities/speciality5.png',
    'assets/images/specialities/speciality6.png',
    'assets/images/specialities/speciality7.png',
    'assets/images/specialities/speciality8.png',
    'assets/images/specialities/speciality9.png',
    'assets/images/specialities/speciality10.png',
  ];
  String getSpecialityPhoto(int index) {
    if (index < 0 || index >= doctorsSpecialityPhotos.length) {
      return 'assets/images/specialities/speciality4.png'; // Default image if index is out of range
    }
    return doctorsSpecialityPhotos[index];
  }
}
