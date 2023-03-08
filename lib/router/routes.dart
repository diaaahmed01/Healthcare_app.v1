import 'package:drlist_bloc_app/searchdoctorol/Data/models/patient.dart';
import 'package:drlist_bloc_app/searchdoctorol/Data/models/patient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../searchdoctorol/Data/models/patient.dart';
import '../searchdoctorol/Data/repos/WebService.dart';
import '../searchdoctorol/Data/repos/repostory.dart';
import '../searchdoctorol/Logic/cubit/Appointments_cubit.dart';

import '../searchdoctorol/Ui/screens/appointment_details.dart';
import '../searchdoctorol/Ui/screens/appointments.dart';

class AppRouter {
  final appointmentsCubit = AppointmentsCubit(UserRepository(WebService()));

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: appointmentsCubit,
                  child: AppointmentsList(),
                ));

      case '/AppointmentsInfo':
        final patient = routeSettings.arguments as Patient;
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: appointmentsCubit,
                  child: AppointmentInfo(
                    patient: patient,
                  ),
                ));

      // case '/info':
      //   final doctor = routeSettings.arguments as Patient;
      //   return MaterialPageRoute(
      //       builder: (_) => BlocProvider.value(
      //             value: appointmentsCubit,
      //             child: doctorInfo(
      //               doctor: doctor,
      //             ),
      //           ));

      default:
        return null;
    }
  }

  void dispose() {
    appointmentsCubit.close();
  }
}
