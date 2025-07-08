import 'dart:io';

void main() {
  // Crear el vector de 10 posiciones con valores iniciales en 0
  List<int> vector = List.filled(10, 0);

  print(" Llenado del vector:");
  // Llenar el vector usando un ciclo for
  for (int i = 0; i < 10; i++) {
    stdout.write("Ingrese un número entero para la posición $i: ");
    int? valor = int.tryParse(stdin.readLineSync() ?? "");

    // Validar entrada
    if (valor != null) {
      vector[i] = valor;
    } else {
      print(" Entrada inválida. Se asignará 0 por defecto.");
      vector[i] = 0;
    }
  }

  print("\n Contenido del vector:");
  // Imprimir el vector con otro ciclo
  for (int i = 0; i < 10; i++) {
    int posicion = i + 1;
    int valor = vector[i];
    print("Índice: $i | Posición: $posicion | Valor: $valor");
  }
}
