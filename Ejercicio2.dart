void main() {
  final Map<int, Map<String, dynamic>> inventario = {
    1: {'nombre': 'Laptop', 'cantidad': 5, 'precio': 1200.0},
    2: {'nombre': 'Mouse', 'cantidad': 20, 'precio': 25.0},
  };

  try {
    print('Inventario inicial:');
    print(inventario);

    actualizarCantidad(inventario, 1, 3);

    print('\nInventario después de la actualización:');
    print(inventario);

    final double total = calcularValorTotal(inventario);
    print('\nValor total del inventario: $total');
  } catch (e) {
    print(e);
  }
}

void actualizarCantidad(Map<int, Map<String, dynamic>> inventario,
    int idProducto, int nuevaCantidad) {
  if (!inventario.containsKey(idProducto)) {
    throw Exception('Error: Producto con ID $idProducto no encontrado');
  }
  if (nuevaCantidad < 0) {
    throw Exception('Error: La cantidad no puede ser negativa');
  }

  inventario[idProducto]!['cantidad'] = nuevaCantidad;
}

double calcularValorTotal(Map<int, Map<String, dynamic>> inventario) {
  double total = 0;
  inventario.forEach((id, producto) {
    total += (producto['cantidad'] * producto['precio']);
  });
  return total;
}