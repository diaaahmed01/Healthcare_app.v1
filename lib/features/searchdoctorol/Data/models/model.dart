// To parse this JSON data, do
//
//     final usermodel = usermodelFromJson(jsonString);

//Usermodel usermodelFromJson(String str) => Usermodel.fromJson(json.decode(str));

//String usermodelToJson(Usermodel data) => json.encode(data.toJson());

class Usermodel {
  late String name;
  late String specialty;
  late String id;

  Usermodel({required this.name, required this.specialty, required this.id});

  Usermodel.fromJson(Map<String, dynamic> json) {
    name = json['doctorName'];
    specialty = json['doctorSpeciality'];
    id = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['doctorName'] = this.name;
    data['doctorSpeciality'] = this.specialty;
    data['_id'] = this.id;
    return data;
  }
}
