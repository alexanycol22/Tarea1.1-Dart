import 'Coche.dart';void main() {
  try {
    final coche1 = Coche('Toyota', 'Corolla', anio: 2020);
    final coche2 = Coche('Ford', 'Mustang', anio: 1969, color: 'Rojo');

    print('Detalles del coche 1:');
    mostrarDetalles(coche1, incluirColor: false);

    print('\nDetalles del coche 2:');
    mostrarDetalles(coche2, incluirColor: true);

    print('\nDetalles del coche 1 (sin color):');
    mostrarDetalles(coche1, incluirColor: false);

    print('\nDetalles del coche 2 (con color):');
    mostrarDetalles(coche2, incluirColor: true);
  } catch (e) {
    print(e);
  }
}


void mostrarDetalles(Coche coche, {required bool incluirColor}) {
  if (incluirColor && coche.color != null) {
    print('Marca: ${coche.marca}, Modelo: ${coche.modelo}, Año: ${coche.anio}, Color: ${coche.color}');
  } else {
    print('Marca: ${coche.marca}, Modelo: ${coche.modelo}, Año: ${coche.anio}');
  }
}
