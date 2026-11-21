import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/screen/employee_list_screen.dart';

void main(){
  runApp(ProviderScope(child: TASK()));
}

class TASK extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmployeeListScreen(),
    );
  }
}