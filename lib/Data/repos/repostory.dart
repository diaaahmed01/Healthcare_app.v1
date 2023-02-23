import 'dart:convert';

import 'WebService.dart';
import 'package:http/http.dart' as http;

import '../../Configuration/api_constants.dart';
import '../models/model.dart';

class UserRepository {
  final WebService webservice;

  UserRepository(this.webservice);

  Future<List<Usermodel>> getUser() async {
    final Doctors = await webservice.getUser();
    //final List<Usermodel> Doctors = res.map(((e) => Usermodel.fromJson(e))).toList();
    return Doctors.map(((e) => Usermodel.fromJson(e))).toList();
  }

  Future<bool> AddUser(String name, String Speciality) async {
    Map<String, dynamic> data = {
      'doctorName': name,
      'doctorSpeciality': Speciality
    };
    String? response =
        await webservice.PostUser(ApiConstants.baseUrl, ApiConstants.api, data);
    return response != null;
  }

  Future<bool> DeleteUser(Usermodel data) async {
    bool response = await webservice.deleteUser(
        ApiConstants.baseUrl, ApiConstants.api, data.id);
    return response != null;
  }

  Future<bool> updateItem(
      String name, String Speciality, Usermodel user) async {
    Map<String, dynamic> data = {
      'doctorName': name,
      'doctorSpeciality': Speciality
    };
    bool response = await webservice.updateItem(
        ApiConstants.baseUrl, ApiConstants.api, data, user.id);
    return response != null;
  }
  // String endpoint = 'https://test-third-baseline.onrender.com/Doctors';
  // Future<List<Usermodel>> getUser() async {
  //   Response response = await get(Uri.parse(endpoint));
  //   if (response.statusCode == 200) {
  //     final List result = jsonDecode(response.body);
  //     return result.map(((e) => Usermodel.fromJson(e))).toList();
  //   } else {
  //     throw Exception(response.reasonPhrase);
  //   }
  // }
}
