import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Data/models/model.dart';
import '../../Data/repos/WebService.dart';
import '../../Data/repos/repostory.dart';
import '../../Logic/cubit/doctor_list_cubit.dart';
import '../screens/Doctorlist.dart';
import '../screens/doctor_info.dart';

class AppRouter {
  late DoctorListCubit doctorListCubit;
  late UserRepository ur;

  AppRouter() {
    ur = UserRepository(WebService());
    doctorListCubit = DoctorListCubit(ur);
  }

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: doctorListCubit,
                  child: DoctorList(),
                ));

      case '/info':
        final doctor = routeSettings.arguments as Usermodel;
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: doctorListCubit,
                  child: doctorInfo(
                    doctor: doctor,
                  ),
                ));

      default:
        return null;
    }
  }
}
