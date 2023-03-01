import 'package:drlist_bloc_app/Configuration/api_constants.dart';
import 'package:drlist_bloc_app/features/searchdoctorol/Data/models/review.dart';
import 'package:drlist_bloc_app/features/searchdoctorol/Ui/screens/review.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                    MaterialButton(
                      onPressed: () {
                        ApiConstants.id = doctor.id;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => reviewsList(),
                        ));
                      },
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
