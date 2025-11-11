class EmployeeModel {
  final int antiguedad;
  final double sueldoActual;
  late double porcentajeAumento;
  late double nuevoSueldo;

  EmployeeModel({required this.antiguedad, required this.sueldoActual}) {
    _calcularReajuste();
  }

  void _calcularReajuste() {
    if (antiguedad >= 20) {
      porcentajeAumento = 15.0;
    } else if (antiguedad > 10 && antiguedad < 20) {
      if (sueldoActual <= 300) {
        porcentajeAumento = 14.0;
      } else if (sueldoActual > 300 && sueldoActual <= 500) {
        porcentajeAumento = 12.0;
      } else {
        porcentajeAumento = 10.0;
      }
    } else {
      if (sueldoActual <= 300) {
        porcentajeAumento = 12.0;
      } else if (sueldoActual > 300 && sueldoActual <= 500) {
        porcentajeAumento = 10.0;
      } else {
        porcentajeAumento = 8.0;
      }
    }

    nuevoSueldo = sueldoActual + (sueldoActual * porcentajeAumento / 100);
  }

  Map<String, dynamic> getResultado() {
    return {
      'antiguedad': antiguedad,
      'sueldoActual': sueldoActual,
      'porcentajeAumento': porcentajeAumento,
      'nuevoSueldo': nuevoSueldo,
    };
  }
}
