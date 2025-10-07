class Coche {
  final String marca;
  final String modelo;
  final int anio;
  final String? color;

  Coche(this.marca, this.modelo, {required this.anio, this.color}) {
    if (anio < 1886) {
      throw Exception('Error: Año inválido para un coche');
    }
  }

  @override
  String toString() {
    return color != null
        ? 'Marca: $marca, Modelo: $modelo, Año: $anio, Color: $color'
        : 'Marca: $marca, Modelo: $modelo, Año: $anio';
  }
}
