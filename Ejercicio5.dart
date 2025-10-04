void main() {
  var notasEstudiantes = {
    "Juan": [8.0, 9.0, 8.5],
    "Maria": [9.5, 9.0, 9.1],
    "Luis": [7.5, 8.0, 7.9],
  };

  notasEstudiantes.forEach((nombre, notas) {
    print("Promedio de $nombre: ${calcularPromedio(notas)}");
  });

  print("\nEl mejor estudiante es ${obtenerMejorEstudiante(notasEstudiantes)}");
}

double calcularPromedio(List<double> notas) {
  if (notas.isEmpty) return 0;
  return notas.reduce((a, b) => a + b) / notas.length;
}

String obtenerMejorEstudiante(Map<String, List<double>> notasEstudiantes) {
  String mejor = "";
  double mejorPromedio = 0;

  notasEstudiantes.forEach((nombre, notas) {
    double promedio = calcularPromedio(notas);
    if (promedio > mejorPromedio) {
      mejorPromedio = promedio;
      mejor = nombre;
    }
  });

  return "$mejor con un promedio de $mejorPromedio";
}