void main() {
  final Map<String, List<double>> notasEstudiantes = {
    'Juan': [8.0, 9.0, 8.5],
    'Maria': [9.5, 9.0, 9.1],
    'Luis': [7.5, 8.0, 7.9],
  };

  try {
    notasEstudiantes.forEach((nombre, notas) {
      final promedio = calcularPromedio(notas);
      print('Promedio de $nombre: ${promedio.toStringAsFixed(1)}');
    });

    print('\n${obtenerMejorEstudiante(notasEstudiantes)}');
  } catch (e) {
    print(e);
  }
}

double calcularPromedio(List<double> notas) {
  if (notas.isEmpty) {
    throw Exception('Error: La lista de notas está vacía.');
  }
  final suma = notas.reduce((a, b) => a + b);
  return suma / notas.length;
}

String obtenerMejorEstudiante(Map<String, List<double>> notasEstudiantes) {
  if (notasEstudiantes.isEmpty) {
    throw Exception('Error: No hay estudiantes en la lista.');
  }

  String mejor = '';
  double mejorPromedio = 0;

  notasEstudiantes.forEach((nombre, notas) {
    final promedio = calcularPromedio(notas);
    if (promedio > mejorPromedio) {
      mejorPromedio = promedio;
      mejor = nombre;
    }
  });

  return 'El mejor estudiante es $mejor con un promedio de ${mejorPromedio.toStringAsFixed(1)}';
}
