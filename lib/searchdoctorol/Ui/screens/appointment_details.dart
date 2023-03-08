// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../Data/models/patient.dart';

class AppointmentInfo extends StatelessWidget {
  const AppointmentInfo({
    required this.patient,
  });

  final Patient patient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('My Appointments'),
      ),
      body: Container(
        color: Colors.blueGrey,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('lib/images/doctor.jpg'),
            ),
            Container(
                color: Colors.white,
                width: 300,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '${patient.patientName}',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    Text(
                      '${patient.patientAge}',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text("reviews"),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
