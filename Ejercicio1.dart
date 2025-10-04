import 'Empleado.dart';

void main() {
  var empleados = [
    Empleado('Juan', 101, 50000.0),
    Empleado('Ana', 102, 60000.0),
  ];

  print('Salarios antes del aumento:');
  for (var e in empleados) print(e);

  aumentarSalario(empleados, porcentaje: 10.0);

  print('\nSalarios despues del aumento:');
  for (var e in empleados) print(e);
}
