import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PatientProfile extends StatelessWidget {
  const PatientProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))]),
      body: Column(children: [
        Row(
          children: [
            Image(
              image: AssetImage('lib/searchdoctorol/images/doctor.jpg'),
            ),
            Text('Diaa Rashed'),
          ],
        ),
        Text('21  years'),
      ]),
    );
  }
}
