class Doctor {
  late String name;
  late String specialty;
  late String photo;

  Doctor({required this.name, required this.specialty, required this.photo});

  Doctor.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    specialty = json['specialty'];
    photo = json['photo'];
  }
}
