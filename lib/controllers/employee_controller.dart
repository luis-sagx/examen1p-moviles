import '../models/employee_model.dart';

class EmployeeController {
  String calcularReajuste(String antiguedadStr, String sueldoStr) {
    //validaciones
    if (antiguedadStr.isEmpty || sueldoStr.isEmpty) {
      return 'Por favor, ingrese todos los datos.';
    }

    int? antiguedad = int.tryParse(antiguedadStr);
    if (antiguedad == null) {
      return 'La antiguedad debe ser un numero entero valido.';
    }

    if (antiguedad < 0) {
      return 'La antiguedad no puede ser negativa.';
    }

    double? sueldoActual = double.tryParse(sueldoStr);
    if (sueldoActual == null) {
      return 'El sueldo debe ser un numero valido.';
    }

    if (sueldoActual <= 0) {
      return 'El sueldo debe ser mayor a cero.';
    }

    final EmployeeModel employee = EmployeeModel(
      antiguedad: antiguedad,
      sueldoActual: sueldoActual,
    );

    final resultado = employee.getResultado();
    return 'Antiguedad: ${resultado['antiguedad']} años\n'
        'Tiene un aumento de: ${resultado['porcentajeAumento'].toStringAsFixed(0)}%\n\n'
        'Nuevo sueldo: \$${resultado['nuevoSueldo'].toStringAsFixed(2)}';
  }
}
