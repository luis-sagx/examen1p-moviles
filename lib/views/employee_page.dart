import 'package:flutter/material.dart';
import '../widgets/calculate_button.dart';
import '../widgets/user_input.dart';
import '../controllers/employee_controller.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({super.key});

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  final controller = EmployeeController();
  final antiguedadController = TextEditingController();
  final sueldoController = TextEditingController();

  void _calcularReajuste() {
    final resultado = controller.calcularReajuste(
      antiguedadController.text,
      sueldoController.text,
    );

    Navigator.pushNamed(context, '/result', arguments: resultado);
  }

  @override
  void dispose() {
    antiguedadController.dispose();
    sueldoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculadora de Reajuste Salarial')),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Ingrese los datos del empleado',
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    UserInput(
                      controller: antiguedadController,
                      label: 'Antigüedad (años)',
                    ),
                    const SizedBox(height: 16),
                    UserInput(
                      controller: sueldoController,
                      label: 'Sueldo Actual (\$)',
                    ),
                    const SizedBox(height: 24),
                    CalculateButton(
                      onPressed: _calcularReajuste,
                      text: 'Calcular Reajuste',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
