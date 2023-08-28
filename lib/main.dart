import 'package:flutter/material.dart';
import 'package:placementest/screens/employee_list/employee_list_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
         appBarTheme: const AppBarTheme(color: Colors.green,),

      ),
      home: const EmployeeList(),
    );
  }
}