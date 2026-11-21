import 'package:flutter/material.dart';
import 'package:task/model/employee_model.dart';

class EmployeeDetailsScreen extends StatelessWidget {
  final EmployeeModel employee;
  const new({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Employee Details")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(employee.fullName), Text(employee.address.country)],
        ),
      ),
    );
  }
}
