
void main() {
  var inventario = {
    1: {'nombre': 'Laptop', 'cantidad': 5, 'precio': 1200.0},
    2: {'nombre': 'Mouse', 'cantidad': 20, 'precio': 25.0},
  };

  print('Inventario inicial:');
  print(inventario);

  actualizarCantidad(inventario, 1, 3);

  print('\nInventario después de la actualización:');
  print(inventario);

  var total = calcularValorTotal(inventario);
  print('\nValor total del inventario: $total');
}

void actualizarCantidad(Map<int, Map<String, dynamic>> inventario,
    int idProducto, int nuevaCantidad) {
  if (inventario.containsKey(idProducto)) {
    inventario[idProducto]!['cantidad'] = nuevaCantidad;
  }
}

double calcularValorTotal(Map<int, Map<String, dynamic>> inventario) {
  double total = 0;
  inventario.forEach((id, producto) {
    total += producto['cantidad'] * producto['precio'];
  });
  return total;
}
