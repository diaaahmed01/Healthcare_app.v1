import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list2 extends StatelessWidget {
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.grey[300],
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 70, 0, 0),
                    child: Text('All Doctors',
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 70, 0, 0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30.0,
                      )),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 250, 0),
                child: Text('ALL DOCTORS',
                    style: TextStyle(
                        color: Color(0xFF6574CF),
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 250, 0),
                child: Text('___________________',
                    style: TextStyle(
                        color: Color(0xFF6574CF),
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold)),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 15, 0, 0),
                    child: Text('Doctor List',
                        style: const TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    width: 190,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 15, 0, 0),
                    child: Text('Card View',
                        style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 15, 0, 0),
                    child: Icon(
                      Icons.domain_verification_sharp,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildList(context),
                separatorBuilder: (context, index) => SizedBox(
                  height: 8.0,
                ),
                itemCount: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList(BuildContext context) => Container(
        height: 220.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey)),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 40.0, 0.0, 0.0),
                  child: CircleAvatar(
                      radius: 40.0,
                      child: Image(image: AssetImage('assets/doctor87.png'))),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40.0, 0, 0),
                  child: Column(
                    children: [
                      Text('Saad',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Ophthalmologist',
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 17.0,
                              fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('☖ 68km away',
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 17.0,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.star_rate),
                        color: Color(0xFF6574CF),
                      ),
                      Text(
                        '4.7',
                        style:
                            TextStyle(color: Color(0xFF6574CF), fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.videocam_outlined),
                    color: Color(0xFF6574CF),
                  ),
                  Text(
                    'Video Visit',
                    style: TextStyle(color: Color(0xFF6574CF), fontSize: 17.0),
                  ),
                  SizedBox(
                    width: 130.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_bag, size: 30.0),
                    color: Color(0xFF6574CF),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.text_snippet_outlined, size: 30.0),
                    color: Color(0xFF6574CF),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
