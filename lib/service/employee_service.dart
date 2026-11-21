import 'package:dio/dio.dart';
import 'package:task/model/employee_model.dart';

class EmployeeService {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "https://dummyjson.com",
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
    ),
  );

  Future<List<EmployeeModel>> fetchEmployees() async {
    try {
      final response = await dio.get('/users');

      final List employees = response.data['users'];

      return employees.map((employee) {
        return EmployeeModel.fromJson(employee);
      }).toList();
    } catch (e) {
      throw Exception("Failed to fetch : $e");
    }
  }
}
