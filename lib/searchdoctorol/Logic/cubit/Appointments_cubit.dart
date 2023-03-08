import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';

import '../../Data/models/patient.dart';
import '../../Data/repos/repostory.dart';

part 'Appointment_state.dart';

class AppointmentsCubit extends Cubit<AppointmentsState> {
  final UserRepository userRepository;

  // final jsonService drjson;
  List<Patient> allPatients = [];

  AppointmentsCubit(this.userRepository) : super(InitialState());

  List<Patient> getAllPatients() {
    emit(AppointmentsListLoading());
    userRepository.getUser().then((doctors) {
      this.allPatients = doctors;
      emit(AppointmentsListLoaded(allPatients));
    });

    return allPatients;
  }
}
