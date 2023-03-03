import 'package:drlist_bloc_app/features/searchdoctorol/Data/models/review.dart';
import 'package:drlist_bloc_app/features/searchdoctorol/Data/models/review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/searchdoctorol/Data/models/model.dart';
import '../features/searchdoctorol/Data/models/review.dart';
import '../features/searchdoctorol/Data/models/review.dart';
import '../features/searchdoctorol/Data/repos/WebService.dart';
import '../features/searchdoctorol/Data/repos/repostory.dart';
import '../features/searchdoctorol/Logic/cubit/doctor_list_cubit.dart';
import '../features/searchdoctorol/Ui/screens/Doctorlist.dart';
import '../features/searchdoctorol/Ui/screens/doctor_info.dart';
import '../features/searchdoctorol/Ui/screens/review.dart';

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

      case '/reviews':
        final doctor = routeSettings.arguments as Usermodel;
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: doctorListCubit,
                  child: reviewsList(
                    doctor: doctor,
                  ),
                ));

      default:
        return null;
    }
  }
}
