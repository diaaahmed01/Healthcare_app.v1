import 'package:bloc/bloc.dart';
import 'package:drlist_bloc_app/features/searchdoctorol/Data/models/review.dart';
import 'package:equatable/equatable.dart';

import '../../Data/models/model.dart';
import '../../Data/repos/repostory.dart';

part 'doctor_list_state.dart';

class DoctorListCubit extends Cubit<DoctorListState> {
  final UserRepository userRepository;

  // final jsonService drjson;
  List<Usermodel> allDoctors = [];
  List<Review> allReviews = [];
  DoctorListCubit(this.userRepository) : super(InitialState());

  List<Usermodel> getAllDoctors() {
    emit(DoctorListLoading());
    userRepository.getUser().then((doctors) {
      emit(DoctorListLoaded(doctors));
      this.allDoctors = doctors;
    });

    return allDoctors;
  }

  List<Review> getReviewById(String id) {
    emit(DoctorReviewLoading());
    userRepository.getReviewById(id).then((reviews) {
      emit(DoctorReviewLoaded(reviews));
      this.allReviews = reviews;
    });

    return allReviews;
  }
}
