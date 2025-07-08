import 'dart:io';

void main() {
  print("Ingrese tres números para ordenarlos:");

  stdout.write("Número 1: ");
  double num1 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Número 2: ");
  double num2 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Número 3: ");
  double num3 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  // Guardar los números en una lista
  List<double> numeros = [num1, num2, num3];

  // Solicitar tipo de ordenamiento
  stdout.write("¿Cómo desea ordenarlos? (ascendente / descendente): ");
  String orden = (stdin.readLineSync() ?? "").toLowerCase();

  if (orden == "ascendente") {
    numeros.sort(); // Orden ascendente por defecto
    print(" Números ordenados de forma ascendente: $numeros");
  } else if (orden == "descendente") {
    numeros.sort((a, b) => b.compareTo(a)); // Orden descendente
    print(" Números ordenados de forma descendente: $numeros");
  } else {
    print(" Opción no válida. Escriba 'ascendente' o 'descendente'.");
  }
}
