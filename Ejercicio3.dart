void main() {
  var agenda = [
    {'nombre': 'Maria', 'telefono': '987654321', 'email': 'maria@mail.com'},
    {'nombre': 'Pedro', 'telefono': '123456789', 'email': 'pedro@mail.com'},
    {'nombre': 'Luis', 'telefono': '555555555', 'email': 'luis@mail.com'},
  ];

  print("Buscando a 'Pedro'...");
  var encontrado = buscarContacto(agenda, 'Pedro');
  if (encontrado != null) {
    print("Contacto encontrado: $encontrado");
  } else {
    print("No se encontró el contacto.");
  }

  print("\nEliminando a 'Pedro'...");
  eliminarContacto(agenda, nombreEliminar: 'Pedro');
  print("Agenda después de la eliminación:");
  print(agenda);
}

Map<String, String>? buscarContacto(
    List<Map<String, String>> agenda, String nombreBusqueda) {
  for (var contacto in agenda) {
    if (contacto['nombre'] == nombreBusqueda) {
      return contacto;
    }
  }
  return null;
}

void eliminarContacto(
    List<Map<String, String>> agenda, {required String nombreEliminar}) {
  agenda.removeWhere((c) => c['nombre'] == nombreEliminar);
}