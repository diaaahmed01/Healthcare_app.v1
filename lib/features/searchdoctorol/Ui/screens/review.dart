// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:drlist_bloc_app/Configuration/api_constants.dart';
import 'package:drlist_bloc_app/features/searchdoctorol/Data/models/review.dart';

import '../../Data/models/model.dart';
import '../../Logic/cubit/doctor_list_cubit.dart';
import '../widgets/LoadingIndicator.dart';
import '../widgets/review.dart';

class reviewsList extends StatefulWidget {
  Usermodel doctor;

  reviewsList({required this.doctor});

  @override
  State<reviewsList> createState() => _reviewsListState();
}

class _reviewsListState extends State<reviewsList> {
  late List<Review> allReviews;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<DoctorListCubit>(context).testTest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.deepPurple, title: Text('reviews')),
      body: buildBlockwidget(),
    );
  }

  Widget buildBlockwidget() {
    return BlocBuilder<DoctorListCubit, DoctorListState>(
      builder: (context, state) {
        if (state is Testt) {
          return Center(child: Text((state).test));
        } else {
          return LoadingIndicator();
        }
      },
    );
  }
}
