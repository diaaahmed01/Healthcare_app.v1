import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Data/data_providers/loadjson.dart';
import 'Data/repos/WebService.dart';
import 'Data/repos/repostory.dart';
import 'Logic/cubit/doctor_list_cubit.dart';
import 'Ui/router/routes.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  MyApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
