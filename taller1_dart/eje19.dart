import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("¿Deseas generar números del Baloto? (sí/no): ");
  String respuesta = (stdin.readLineSync() ?? "").toLowerCase();

  if (respuesta == "sí" || respuesta == "si") {
    final random = Random();
    Set<int> numeros = {};

    // Generar números únicos hasta tener 6
    while (numeros.length < 6) {
      numeros.add(random.nextInt(45) + 1); // del 1 al 45
    }

    // Convertir a lista y ordenar
    List<int> resultado = numeros.toList()..sort();

    print("\n Números del Baloto:");
    print(resultado);
  } else {
    print(" Acción cancelada.");
  }
}
