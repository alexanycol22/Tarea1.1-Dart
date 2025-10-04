class Empleado {
  String nombre;
  int id;
  double salario;

  Empleado(this.nombre, this.id, this.salario);

  @override
  String toString() =>
      '- Empleado: $nombre, ID: $id, Salario: ${salario.toStringAsFixed(1)}';
}

void aumentarSalario(List<Empleado> empleados, {required double porcentaje}) {
  for (var e in empleados) {
    e.salario += e.salario * (porcentaje / 100);
  }
}
