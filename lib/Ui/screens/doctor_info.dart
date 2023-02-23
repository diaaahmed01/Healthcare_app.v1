import '../../Data/models/doctor_model.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../../Data/models/model.dart';

class doctorInfo extends StatelessWidget {
  final Usermodel doctor;

  const doctorInfo({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('DR profile'),
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
                      doctor.name,
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    Text(
                      doctor.specialty,
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
