import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listOne extends StatelessWidget {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 130.0,
                color: Color(0xFF6574CF),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 80, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 80, 0, 0),
                      child: Text('Doctor Profile',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 80, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.location_on_outlined),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.0,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.videocam_outlined),
                    color: Color(0xFF6574CF),
                  ),
                  Text(
                    'Video Visit',
                    style: TextStyle(
                        color: Color(0xFF6574CF),
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 210.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chat_outlined, size: 30.0),
                    color: Color(0xFF6574CF),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                child: CircleAvatar(
                    radius: 60.0,
                    child: Image(image: AssetImage('assets/doctor87.png'))),
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  Text('DR-Nour Ramy',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 23.0)),
                  Text('Ophthalmologist',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(145.0, 0, 0, 0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.star_rate),
                          color: Color(0xFF6574CF),
                        ),
                        Text(
                          '4.7',
                          style: TextStyle(
                              color: Color(0xFF6574CF),
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'About',
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 20, 0, 0),
                            child: Text('Alexandria',
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20.0)),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 20, 0, 0),
                            child: Text('Location',
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 15.0)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 20, 0, 0),
                            child: Text('20 Years',
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20.0)),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 20, 0, 0),
                            child: Text('Experience',
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 15.0)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                      '________________________________________________________',
                      style: TextStyle(color: Colors.grey[300])),
                  ElevatedButton.icon(
                    icon: Icon(
                      Icons.meeting_room,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    label: Text('Available Timing'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF6574CF),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Container(
                  width: 340,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text('Experience&Qualifications',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0,
                                )),
                            SizedBox(
                              width: 70.0,
                            ),
                            Container(
                              height: 20.0,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.grey,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(5.0),
                                  ),
                                ),
                                child: Text('Show More'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('sjfvbkjdbfkjbdfjk', style: TextStyle(fontSize: 15)),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text('sjfvbkjdbfkjbdfjk', style: TextStyle(fontSize: 15)),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text('sjfvbkjdbfkjbdfjk', style: TextStyle(fontSize: 15))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Row(
                          children: [
                            Text('Reviews',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                )),
                            SizedBox(
                              width: 210.0,
                            ),
                            Container(
                              height: 20.0,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.grey,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(5.0),
                                  ),
                                ),
                                child: Text('Show More'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 130.0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => buildCard(),
                        separatorBuilder: (context, index) => SizedBox(
                          width: 20.0,
                        ),
                        itemCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard() => Container(
        width: 180.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          children: [
            CircleAvatar(
                radius: 25.0,
                child: Image(image: AssetImage('assets/doctor87.png'))),
            Text('Name', style: TextStyle(fontSize: 15.0)),
            Padding(
              padding: const EdgeInsets.fromLTRB(65, 0, 0, 0),
              child: Row(
                children: [
                  Icon(
                    Icons.star_rate,
                    color: Color(0xFF6574CF),
                    size: 15.0,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Color(0xFF6574CF),
                    size: 15.0,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Color(0xFF6574CF),
                    size: 15.0,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Color(0xFF6574CF),
                    size: 15.0,
                  ),
                ],
              ),
            ),
            Text('Prfectooooo',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      );
}
