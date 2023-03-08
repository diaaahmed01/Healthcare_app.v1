// To parse this JSON data, do
//
//     final appointment = appointmentFromJson(jsonString);

import 'dart:convert';

//Appointment appointmentFromJson(String str) => Appointment.fromJson(json.decode(str));

//String appointmentToJson(Appointment data) => json.encode(data.toJson());

class Appointment {
  Appointment({
    required this.id,
    required this.patientId,
    required this.doctorId,
    required this.appointmentDate,
    required this.appointmentTime,
  });

  String id;
  String patientId;
  String doctorId;
  String appointmentDate;
  String appointmentTime;

  factory Appointment.fromJson(Map<String, dynamic> json) => Appointment(
        id: json["_id"],
        patientId: json["PatientId"],
        doctorId: json["DoctorId"],
        appointmentDate: json["AppointmentDate"],
        appointmentTime: json["AppointmentTime"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "PatientId": patientId,
        "DoctorId": doctorId,
        "AppointmentDate": appointmentDate,
        "AppointmentTime": appointmentTime,
      };
}
