import 'dart:convert';

import 'package:drlist_bloc_app/searchdoctorol/Data/models/appointment.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../../../Configuration/api_constants.dart';

class WebService {
  String endpoint = ApiConstants.baseUrl;
  String AppointmentApi = ApiConstants.Appointments;

  static String patientsApi = '/Patients';

  // Future<List> getPatient(String doctorId) async {
  //   Uri url1 = Uri.https(endpoint, patientsApi);
  //   Uri url = Uri.parse("$url1/$doctorId");
  //   print(url);
  //   Response response = await get(url);
  //   if (response.statusCode == 200) {
  //     final List result = jsonDecode(response.body);
  //     print(result);
  //     return result;
  //   } else {
  //     throw Exception(response.reasonPhrase);
  //   }
  // }

  Map<String, String> get headers {
    return {
      'Content-type': 'application/json; charset=UTF-8',
    };
  }

  Future<List> getPatients() async {
    var url = Uri.https(endpoint, patientsApi);

    Response response = await get(url);
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);

      return result;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<String?> PostUser(
      String baseUrl, String api, Map<String, dynamic>? body) async {
    Uri url = Uri.https(baseUrl, api);
    Response response =
        await post(url, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  Future<bool> deleteUser(String baseUrl, String api, String itemId) async {
    bool status = false;
    Uri url1 = Uri.https(baseUrl, api);
    Uri url = Uri.parse("$url1/$itemId");
    print(url);
    //Delete the item from the Database
    http.Response response = await http.delete(url);

    if (response.statusCode == 200) {
      status = true;
    }

    return status;
  }

  Future<bool> updateItem(
      String baseUrl, String api, Map data, String itemId) async {
    bool status = false;
    Uri url1 = Uri.https(baseUrl, api);
    Uri url = Uri.parse("$url1/$itemId");
    //Update the item, call the API
    http.Response response = await http.patch(url,
        body: jsonEncode(data), headers: {'Content-type': 'application/json'});

    if (response.statusCode == 200) {
      status = response.body.isNotEmpty;
    }

    return status;
  }

  Future<List> getAppointments(String doctorId) async {
    var url1 = Uri.https(endpoint, AppointmentApi);
    Uri url = Uri.parse("$url1/$doctorId");
    print(url);
    Response response = await get(url);
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);

      return result;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
