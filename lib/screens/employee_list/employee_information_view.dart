import 'package:flutter/material.dart';
import 'package:placementest/helpers/text_style.dart';
import 'package:placementest/models/employee_data.dart';

class EmployeeInformationView extends StatelessWidget {
  final EmployeeData employeeData;
  const EmployeeInformationView({super.key, required this.employeeData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Details"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Container(
        margin: const EdgeInsets.all(15.0),
        child: Column(
            children: [
              const Center(child: ClipOval(
                child: SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/dp.png',
                    ),
                  ),
                ),
              ),),
              const SizedBox(height: 40.0,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "First Name:",
                      style: titleTextStyle,
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Text(
                      employeeData.firstName!,
                      style: dataTextStyle,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15.0,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Last Name:",
                      style: titleTextStyle,
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Text(
                      employeeData.lastName!,
                      style: dataTextStyle,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15.0,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Employee ID:",
                      style: titleTextStyle,
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Text(
                      employeeData.employeeId!.toString(),
                      style: dataTextStyle,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15.0,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Email:",
                      style: titleTextStyle,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      employeeData.email!,
                      style: dataTextStyle,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15.0,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Hire Date:",
                      style: titleTextStyle,
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Text(
                      employeeData.hireDate!,
                      style: dataTextStyle,
                    ),
                  )
                ],
              ),
            ],
        ),
      ),
          )),
    );
  }
}
