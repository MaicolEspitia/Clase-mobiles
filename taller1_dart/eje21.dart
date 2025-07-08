import 'dart:io';

void main() {
  // Solicitar dos números
  stdout.write("Ingrese el primer número: ");
  int num1 = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Ingrese el segundo número: ");
  int num2 = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  // Determinar menor y mayor
  int menor = num1 < num2 ? num1 : num2;
  int mayor = num1 > num2 ? num1 : num2;

  // Solicitar elección del tipo de serie
  stdout.write("¿Desea ver la serie par o impar? (escriba 'par' o 'impar'): ");
  String tipo = (stdin.readLineSync() ?? "").toLowerCase();

  // Mostrar serie según elección
  if (tipo == "par") {
    print("\n Serie PAR entre $menor y $mayor:");
    for (int i = menor; i <= mayor; i++) {
      if (i % 2 == 0) {
        stdout.write("$i ");
      }
    }
  } else if (tipo == "impar") {
    print("\n Serie IMPAR entre $menor y $mayor:");
    for (int i = menor; i <= mayor; i++) {
      if (i % 2 != 0) {
        stdout.write("$i ");
      }
    }
  } else {
    print(" Opción inválida. Debe escribir 'par' o 'impar'.");
  }

  print(""); // Salto de línea final
}
