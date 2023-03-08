import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Data/models/patient.dart';
import '../../Logic/cubit/Appointments_cubit.dart';
import '../widgets/LoadingIndicator.dart';
import '../widgets/appointmentCard.dart';

class AppointmentsList extends StatefulWidget {
  @override
  State<AppointmentsList> createState() => _AppointmentsListState();
}

class _AppointmentsListState extends State<AppointmentsList> {
  late List<Patient> allPatients;
  late List<Patient> searchedForPatient;
  bool _searching = false;
  final _searchTextController = TextEditingController();

  Widget _buildSearchField() {
    return TextField(
      controller: _searchTextController,
      cursorColor: Colors.black,
      decoration: InputDecoration(
          hintText: 'search Doctor',
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.white, fontSize: 18)),
      style: TextStyle(color: Colors.white, fontSize: 18),
      onChanged: (searchedDoctor) {
        addSearchedForDoctorToSearchedList(searchedDoctor);
      },
    );
  }

  void addSearchedForDoctorToSearchedList(String searchedDoctor) {
    searchedForPatient = allPatients
        .where((Doctor) =>
            Doctor.patientName!.toLowerCase().startsWith(searchedDoctor))
        .toList();

    setState(() {});
  }

  List<Widget> _buildAppBarActions() {
    if (_searching) {
      return [
        IconButton(
            onPressed: () {
              _clearSearch();
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.clear,
              color: Colors.white,
            ))
      ];
    } else {
      return [
        IconButton(
            onPressed: _startSearch,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            )),
      ];
    }
  }

  void _startSearch() {
    ModalRoute.of(context)!
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));
    setState(() {
      _searching = true;
    });
  }

  void _stopSearching() {
    _clearSearch();
    setState(() {
      _searching = false;
    });
  }

  void _clearSearch() {
    setState(() {
      _searchTextController.clear();
    });
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<AppointmentsCubit>(context).getAllPatients();
  }

  Widget buildBlockwidget() {
    return BlocConsumer<AppointmentsCubit, AppointmentsState>(
        listener: (context, state) {
      final Statebar = SnackBar(
        duration: Duration(milliseconds: 700),
        content: Text("${state}"),
      );
      ScaffoldMessenger.of(context).showSnackBar(Statebar);
    }, builder: (context, state) {
      if (state is AppointmentsListLoaded) {
        allPatients = (state).patients;
        return buildLoadedListWidgets();
      }
      if (state is AppointmentsListLoading) {
        return LoadingIndicator();
      } else {
        return Text("error loading data");
      }
    });
  }

  Widget buildLoadedListWidgets() {
    return ListView.builder(
        itemCount: _searchTextController.text.isEmpty
            ? allPatients.length
            : searchedForPatient.length,
        itemBuilder: (context, index) {
          return appointmenCart(
            patient: _searchTextController.text.isEmpty
                ? allPatients[index]
                : searchedForPatient[index],
          );
        });
  }

  Widget _buildAppBarTitle() {
    return Text('My Appointments');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: _searching ? _buildSearchField() : _buildAppBarTitle(),
        actions: _buildAppBarActions(),
      ),
      body: buildBlockwidget(),
    );
  }
}
