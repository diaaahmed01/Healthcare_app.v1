import '../../Data/models/model.dart';

import '../../Data/data_providers/loadjson.dart';
import '../widgets/doctor_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Data/models/doctor_model.dart';
import '../../Logic/cubit/doctor_list_cubit.dart';
import '../widgets/LoadingIndicator.dart';

class DoctorList extends StatefulWidget {
  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  late List<Usermodel> allDoctors;
  late List<Usermodel> searchedForDoctor;
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
    searchedForDoctor = allDoctors
        .where((Doctor) => Doctor.name.toLowerCase().startsWith(searchedDoctor))
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
    BlocProvider.of<DoctorListCubit>(context).getAllDoctors();
  }

  Widget buildBlockwidget() {
    return BlocBuilder<DoctorListCubit, DoctorListState>(
      builder: (context, state) {
        if (state is DoctorListLoaded) {
          allDoctors = (state).doctors;
          return buildLoadedListWidgets();
        }
        if (state is DoctorListLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return LoadingIndicator();
        }
      },
    );
  }

  Widget buildLoadedListWidgets() {
    return ListView.builder(
        itemCount: _searchTextController.text.isEmpty
            ? allDoctors.length
            : searchedForDoctor.length,
        itemBuilder: (context, index) {
          return doctorWidget(
            doctor: _searchTextController.text.isEmpty
                ? allDoctors[index]
                : searchedForDoctor[index],
          );
        });
  }

  Widget _buildAppBarTitle() {
    return Text('DR List');
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
