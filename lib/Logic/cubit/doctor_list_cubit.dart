import 'package:bloc/bloc.dart';
import '../../Data/models/model.dart';
import 'package:flutter/material.dart';
import '../../Data/data_providers/loadjson.dart';
import '../../Data/models/doctor_model.dart';
import 'package:equatable/equatable.dart';

import '../../Data/repos/repostory.dart';

part 'doctor_list_state.dart';

class DoctorListCubit extends Cubit<DoctorListState> {
  final UserRepository userRepository;

  // final jsonService drjson;
  List<Usermodel> allDoctors = [];
  DoctorListCubit(this.userRepository) : super(InitialState());

  // DoctorListCubit(this.drjson) : super(InitialState());

  List<Usermodel> getAllDoctors() {
    emit(DoctorListLoading());
    userRepository.getUser().then((doctors) {
      emit(DoctorListLoaded(doctors));
      this.allDoctors = doctors;
    });

    return allDoctors;
  }

  // emit(DoctorListLoading());
  // drjson.readJsonData().then((doctors) {
  //   emit(DoctorListLoaded(doctors));
  //   this.allDoctors = doctors;
  // });

  // detialpage(Usermodel usermodel) {
  //   emit(DoctorInfoState(doctor));
  // }
}