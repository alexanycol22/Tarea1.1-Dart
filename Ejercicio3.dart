void main() {
  final List<Map<String, String>> agenda = [
    {'nombre': 'Maria', 'telefono': '987654321', 'email': 'maria@mail.com'},
    {'nombre': 'Pedro', 'telefono': '123456789', 'email': 'pedro@mail.com'},
    {'nombre': 'Luis', 'telefono': '555555555', 'email': 'luis@mail.com'},
  ];

  try {
    print("Buscando a 'Pedro'...");
    final contacto = buscarContacto(agenda, 'Pedro');
    print("Contacto encontrado: $contacto");

    print("\nEliminando a 'Pedro'...");
    eliminarContacto(agenda, nombreEliminar: 'Pedro');
    print("Agenda después de la eliminación:");
    print(agenda);
  } catch (e) {
    print(e);
  }
}

Map<String, String> buscarContacto(
    List<Map<String, String>> agenda, String nombreBusqueda) {
  for (final contacto in agenda) {
    if (contacto['nombre'] == nombreBusqueda) {
      return contacto;
    }
  }
  throw Exception('Error: No se encontró el contacto "$nombreBusqueda".');
}

void eliminarContacto(
    List<Map<String, String>> agenda, {required String nombreEliminar}) {
  final eliminado = agenda.removeWhere((c) => c['nombre'] == nombreEliminar);
  if (agenda.every((c) => c['nombre'] != nombreEliminar)) {
    // Si el nombre ya no está, significa que se eliminó
  } else {
    throw Exception('Error: No se pudo eliminar "$nombreEliminar".');
  }
}