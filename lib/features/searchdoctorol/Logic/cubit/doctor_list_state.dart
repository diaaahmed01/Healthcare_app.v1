part of 'doctor_list_cubit.dart';

abstract class DoctorListState {}

class InitialState extends DoctorListState {}

class DoctorListLoading extends DoctorListState {}

class DoctorListLoaded extends DoctorListState {
  final List<Usermodel> doctors;

  DoctorListLoaded(this.doctors);
}

class DoctorInfoState extends DoctorListState {
  final Usermodel doctor;
  DoctorInfoState(this.doctor);
}

class DoctorReviewLoading extends DoctorListState {}

class DoctorReviewLoaded extends DoctorListState {
  final List<Review> reviews;

  DoctorReviewLoaded(this.reviews);
}

class UserErrorState extends DoctorListState {
  final String e;

  UserErrorState(this.e);
}
