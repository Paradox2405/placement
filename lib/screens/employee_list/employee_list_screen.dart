import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:placementest/data/employee_data.dart';
import 'package:placementest/helpers/text_style.dart';
import 'package:placementest/models/employee_data.dart';
import 'package:placementest/screens/employee_list/employee_information_view.dart';

class EmployeeList extends StatefulWidget {
  const EmployeeList({super.key});

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}


class _EmployeeListState extends State<EmployeeList> {
  List<EmployeeData>? employeeList;
  @override
  void initState() {
    List<dynamic> jsonArray = json.decode(employeeDataString);

  employeeList = jsonArray
        .map((item) => EmployeeData.fromJson(item))
        .toList();
super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: const Text("Employee List")),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: employeeList!.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Name: ${employeeList![index].firstName} ${employeeList![index].lastName}',style: titleTextStyle,),
                  leading: const ClipOval(
                    child: SizedBox(
                      width: 30.0,
                      height: 30.0,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/dp.png',
                        ),
                      ),
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                Navigator.push(context,MaterialPageRoute(
                    builder: (context) =>
                        EmployeeInformationView( employeeData: employeeList![index],)) );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }


}
