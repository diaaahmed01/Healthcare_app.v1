part of 'Appointments_cubit.dart';

abstract class AppointmentsState extends Equatable {}

class InitialState extends AppointmentsState {
  List<Object> get props => [];
}

class AppointmentsListLoading extends AppointmentsState {
  List<Object> get props => [];
}

class AppointmentsListLoaded extends AppointmentsState {
  List<Object> get props => [];

  final List<Patient> patients;

  AppointmentsListLoaded(this.patients);
}

class DoctorInfoState extends AppointmentsState {
  List<Object> get props => [];

  final Patient patient;
  DoctorInfoState(this.patient);
}
