import 'package:drlist_bloc_app/searchdoctorol/Data/models/appointment.dart';

import '../../../../Configuration/api_constants.dart';

import '../models/patient.dart';

import 'WebService.dart';

class UserRepository {
  final WebService webservice;

  UserRepository(this.webservice);

  //Experiences
  // Future<Experience> getExperience(Usermodel user) async {
  //   final Experiences = await webservice.getExperiences(user.id);
  //   return Experiences;
  // }

  // Future<List<Review>> getReviewById(String id) async {
  //   final reviews = await webservice.getReviewById(id);
  //   return reviews.map((e) => Review.fromJson(e)).toList();
  // }

  Future<List<Patient>> getUser() async {
    final Doctors = await webservice.getPatients();
    //final List<Usermodel> Doctors = res.map(((e) => Usermodel.fromJson(e))).toList();
    return Doctors.map(((e) => Patient.fromJson(e))).toList();
  }

  Future<bool> AddUser(String name, String Speciality) async {
    Map<String, dynamic> data = {
      'doctorName': name,
      'doctorSpeciality': Speciality
    };
    String? response = await webservice.PostUser(
        ApiConstants.baseUrl, ApiConstants.patientsApi, data);
    return response != null;
  }

  Future<List<Appointment>> getAppointments(doctorId) async {
    final appointments = await webservice.getAppointments(doctorId);
    List<Appointment> Appointments= appointments.map(((e) => Appointment.fromJson(e))).toList();
    List AppointmentswithPatient =Appointments.map((e) => we)


  }

}
