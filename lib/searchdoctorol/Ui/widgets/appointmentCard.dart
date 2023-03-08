import 'package:flutter/material.dart';

import '../../Data/models/patient.dart';

class appointmenCart extends StatelessWidget {
  Patient patient;

  appointmenCart({required this.patient});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Container(
        width: 160.0,
        height: 100,
        color: Colors.deepPurple,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('lib/images/doctor.jpg'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${patient.patientName}',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    "22/2/2022",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              MaterialButton(
                color: Colors.white,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
                onPressed: () {
                  print("clicked");
                  Navigator.pushNamed(
                    context,
                    '/AppointmentsInfo',
                    arguments: patient,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
