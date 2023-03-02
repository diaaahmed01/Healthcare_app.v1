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

class reviewsList extends StatelessWidget {
  late List<Review> allReviews;
  Usermodel doctor;
  reviewsList({
    required this.doctor,
  });

  Widget buildBlockwidget() {
    return BlocBuilder<DoctorListCubit, DoctorListState>(
      builder: (context, state) {
        BlocProvider.of<DoctorListCubit>(context).getReviewById(doctor.id);
        if (state is DoctorReviewLoaded) {
          allReviews = (state).reviews;
          return buildLoadedListWidgets();
        }
        if (state is DoctorReviewLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Text("error");
        }
      },
    );
  }

  Widget buildLoadedListWidgets() {
    return ListView.builder(
        itemCount: allReviews.length,
        itemBuilder: (context, index) {
          return reviewCard(review: allReviews[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.deepPurple, title: Text('reviews')),
      body: buildBlockwidget(),
    );
  }
}
