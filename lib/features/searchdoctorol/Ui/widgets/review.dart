import 'package:drlist_bloc_app/features/searchdoctorol/Data/models/review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Data/models/review.dart';

// ignore: camel_case_types
class reviewCard extends StatelessWidget {
  Review review;
  reviewCard({required this.review});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Container(
        width: 160.0,
        height: 100,
        color: Color.fromARGB(255, 141, 87, 233),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    review.patientName,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    review.feedBackContent,
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
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
