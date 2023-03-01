// To parse this JSON data, do
//
//     final review = reviewFromJson(jsonString);

import 'dart:convert';

Review reviewFromJson(String str) => Review.fromJson(json.decode(str));

String reviewToJson(Review data) => json.encode(data.toJson());

class Review {
  Review({
    required this.id,
    required this.img,
    required this.patientName,
    required this.rating,
    required this.feedBackContent,
    required this.waitingTime,
    required this.bedSideManner,
    required this.consulting,
    required this.v,
    required this.doctorId,
  });

  String id;
  String img;
  String patientName;
  String rating;
  String feedBackContent;
  String waitingTime;
  String bedSideManner;
  String consulting;
  int v;
  String doctorId;

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["_id"],
        img: json["img"],
        patientName: json["patientName"],
        rating: json["Rating"],
        feedBackContent: json["feedBackContent"],
        waitingTime: json["waitingTime"],
        bedSideManner: json["bedSideManner"],
        consulting: json["consulting"],
        v: json["__v"],
        doctorId: json["DoctorId"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "img": img,
        "patientName": patientName,
        "Rating": rating,
        "feedBackContent": feedBackContent,
        "waitingTime": waitingTime,
        "bedSideManner": bedSideManner,
        "consulting": consulting,
        "__v": v,
        "DoctorId": doctorId,
      };
}
