class Patient {
  String? sId;
  String? patientName;
  String? patientAge;
  String? patientImgUrl;
  int? iV;

  Patient(
      {this.sId,
      this.patientName,
      this.patientAge,
      this.patientImgUrl,
      this.iV});

  Patient.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    patientName = json['PatientName'];
    patientAge = json['Patient_Age'];
    patientImgUrl = json['PatientImgUrl'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['PatientName'] = this.patientName;
    data['Patient_Age'] = this.patientAge;
    data['PatientImgUrl'] = this.patientImgUrl;
    data['__v'] = this.iV;
    return data;
  }
}
