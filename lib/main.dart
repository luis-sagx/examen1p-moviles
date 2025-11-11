import 'package:flutter/material.dart';
import 'views/employee_page.dart';
import 'views/result_page.dart';
import 'utils/themes/general_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Reajuste Salarial',
      debugShowCheckedModeBanner: false,
      theme: GeneralTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const EmployeePage(),
        '/result': (context) => const ResultPage(),
      },
    );
  }
}
