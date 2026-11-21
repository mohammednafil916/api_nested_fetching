import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/model/employee_model.dart';
import 'package:task/service/employee_service.dart';

final employeeProvider = FutureProvider<List<EmployeeModel>>((ref) {
  return EmployeeService().fetchEmployees();
});
