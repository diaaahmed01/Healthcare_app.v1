import 'dart:convert';

// ignore: library_prefixes
import 'package:flutter/services.dart' as rootBundle;

import '../models/doctor_model.dart';

// ignore: camel_case_types
class jsonService {
  final String url = 'lib/Data/doctors.json';
  Future<List<Doctor>> readJsonData() async {
    final jsonData = await rootBundle.rootBundle.loadString(url);
    final data = json.decode(jsonData) as List<dynamic>;

    return data.map((e) => Doctor.fromJson(e)).toList();
  }
}
