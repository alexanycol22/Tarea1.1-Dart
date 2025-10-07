import 'Empleado.dart';
void main() {
  final empleados = [
    Empleado(nombre: 'Juan', id: 101, salario: 50000.0),
    Empleado(nombre: 'Ana', id: 102, salario: 60000.0),
  ];

  print('Salarios antes del aumento:');
  for (final e in empleados) print(e);

  for (final e in empleados) {
    e.aumentarSalario(10);
  }

  print('\nSalarios después del aumento:');
  for (final e in empleados) print(e);
}
