import '../models/employee_model.dart';

class EmployeeController {
  String calcularReajuste(String antiguedadStr, String sueldoStr) {
    //validaciones
    if (antiguedadStr.isEmpty || sueldoStr.isEmpty) {
      return 'Por favor, ingrese todos los datos.';
    }

    int? antiguedad = int.tryParse(antiguedadStr);
    if (antiguedad == null) {
      return 'La antigüedad debe ser un número entero válido.';
    }

    if (antiguedad < 0) {
      return 'La antigüedad no puede ser negativa.';
    }

    double? sueldoActual = double.tryParse(sueldoStr);
    if (sueldoActual == null) {
      return 'El sueldo debe ser un número válido.';
    }

    if (sueldoActual <= 0) {
      return 'El sueldo debe ser mayor a cero.';
    }

    final EmployeeModel employee = EmployeeModel(
      antiguedad: antiguedad,
      sueldoActual: sueldoActual,
    );

    final resultado = employee.getResultado();
    return 'Antigüedad: ${resultado['antiguedad']} años\n'
        'Sueldo anterior: \$${resultado['sueldoActual'].toStringAsFixed(2)}\n'
        'Porcentaje de reajuste: ${resultado['porcentajeAumento'].toStringAsFixed(0)}%\n\n'
        'Nuevo sueldo: \$${resultado['nuevoSueldo'].toStringAsFixed(2)}';
  }
}
