import 'package:task/model/address_model.dart';

class EmployeeModel {
  final int id;
  final String firstName;
  final String lastName;
  final AddressModel address;

  EmployeeModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.address,
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) {
    return EmployeeModel(
      id: json['id'],
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      address: AddressModel.fromJson(json['address']),
    );
  }
  String get fullName => "$firstName $lastName";
}
