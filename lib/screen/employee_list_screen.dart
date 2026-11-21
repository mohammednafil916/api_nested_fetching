import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/provider/employee_provider.dart';
import 'package:task/screen/employee_details_screen.dart';

class EmployeeListScreen extends ConsumerWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final employees = ref.watch(employeeProvider);
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Employee List")),
      body: employees.when(
        data: (employeeList) {
          return ListView.builder(
            itemCount: employeeList.length,
            itemBuilder: (context, index) {
              final employee = employeeList[index];
              return ListTile(
                title: Text(employee.fullName),
                subtitle: Text(employee.address.country),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return EmployeeDetailsScreen(employee: employee);
                        },
                      ),
                    );
                  },
                  icon: Icon(Icons.arrow_forward),
                ),
              );
            },
          );
        },
        error: (error, stackTrace) {
          return Center(child: Text("Something Went Wrong!"));
        },
        loading: () {
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
