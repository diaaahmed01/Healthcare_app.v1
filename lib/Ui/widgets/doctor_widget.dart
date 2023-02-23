import '../../Data/models/model.dart';
import 'package:flutter/material.dart';

import '../../Data/models/doctor_model.dart';
import '../screens/doctor_info.dart';

class doctorWidget extends StatelessWidget {
  Usermodel doctor;

  doctorWidget({required this.doctor});

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
                children: [
                  Text(
                    doctor.name,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    doctor.specialty,
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
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => doctorInfo(
                      doctor: doctor,
                    ),
                  ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
