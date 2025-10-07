class Empleado {
  final String nombre;
  final int id;
  double _salario;

  Empleado({
    required this.nombre,
    required this.id,
    required double salario,
  }) : _salario = salario;

  double get salario => _salario;

  set salario(double nuevoSalario) {
    if (nuevoSalario < 0) throw Exception('El salario no puede ser negativo');
    _salario = nuevoSalario;
  }

  void aumentarSalario(double porcentaje) {
    if (porcentaje <= 0) throw Exception('Porcentaje inválido');
    _salario += _salario * (porcentaje / 100);
  }

  @override
  String toString() =>
      '- Empleado: $nombre, ID: $id, Salario: ${_salario.toStringAsFixed(1)}';
}

