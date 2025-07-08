import 'dart:io';

void main() {
  print("=== IDENTIFICACIÓN DE TRIÁNGULOS ===");
  print("Seleccione cómo desea ingresar los datos:");
  print("1. Por Ángulos");
  print("2. Por Lados");

  stdout.write("Opción (1 o 2): ");
  int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (opcion == 1) {
    // Triángulo por ÁNGULOS
    stdout.write("Ingrese el ángulo 1 (°): ");
    int a1 = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    stdout.write("Ingrese el ángulo 2 (°): ");
    int a2 = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    stdout.write("Ingrese el ángulo 3 (°): ");
    int a3 = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    int suma = a1 + a2 + a3;

    if (suma != 180 || a1 <= 0 || a2 <= 0 || a3 <= 0) {
      print(" Los ángulos no forman un triángulo válido. La suma debe ser 180°.");
    } else {
      print(" Los ángulos forman un triángulo válido.");
      if (a1 == 90 || a2 == 90 || a3 == 90) {
        print(" Es un triángulo **rectángulo**.");
      } else if (a1 < 90 && a2 < 90 && a3 < 90) {
        print(" Es un triángulo **acutángulo**.");
      } else {
        print(" Es un triángulo **obtusángulo**.");
      }
    }

  } else if (opcion == 2) {
    // Triángulo por LADOS
    stdout.write("Ingrese el lado 1: ");
    double l1 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

    stdout.write("Ingrese el lado 2: ");
    double l2 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

    stdout.write("Ingrese el lado 3: ");
    double l3 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

    // Ordenar los lados para aplicar la desigualdad triangular
    List<double> lados = [l1, l2, l3]..sort();

    if (l1 <= 0 || l2 <= 0 || l3 <= 0 || (lados[0] + lados[1]) <= lados[2]) {
      print(" Los lados no forman un triángulo válido. La suma de los dos lados más cortos debe ser mayor al lado más largo.");
    } else {
      print(" Los lados forman un triángulo válido.");

      if (l1 == l2 && l2 == l3) {
        print(" Es un triángulo **equilátero**.");
      } else if (l1 == l2 || l1 == l3 || l2 == l3) {
        print(" Es un triángulo **isósceles**.");
      } else {
        print(" Es un triángulo **escaleno**.");
      }
    }
  } else {
    print(" Opción inválida. Debe ser 1 o 2.");
  }
}
