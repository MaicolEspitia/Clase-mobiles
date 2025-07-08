import 'dart:io';
import 'dart:math';

void main() {
  print("===== MENÚ DE OPERACIONES MATEMÁTICAS =====");
  print("1. Suma");
  print("2. Resta");
  print("3. Multiplicación");
  print("4. División");
  print("5. Módulo (residuo)");
  print("6. Cuadrado de un número");
  print("7. Raíz cuadrada de un número");
  print("8. Potencia (A elevado a B)");
  print("9. Porcentaje (A% de B)");
  print("10. Número aleatorio entre A y B");

  stdout.write("Seleccione una opción (1-10): ");
  int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  double a = 0;
  double b = 0;
  double resultado = 0;

  // Solicitar uno o dos números según la operación
  if (opcion >= 1 && opcion <= 5 || opcion == 8 || opcion == 9 || opcion == 10) {
    stdout.write("Ingrese el primer número (A): ");
    a = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

    stdout.write("Ingrese el segundo número (B): ");
    b = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
  } else if (opcion == 6 || opcion == 7) {
    stdout.write("Ingrese un número: ");
    a = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
  }

  // Ejecutar operación según la opción
  switch (opcion) {
    case 1:
      resultado = a + b;
      print("La suma de $a + $b es: $resultado");
      break;
    case 2:
      resultado = a - b;
      print("La resta de $a - $b es: $resultado");
      break;
    case 3:
      resultado = a * b;
      print("La multiplicación de $a * $b es: $resultado");
      break;
    case 4:
      if (b == 0) {
        print("Error: División por 0.");
      } else {
        resultado = a / b;
        print("La división de $a entre $b es: $resultado");
      }
      break;
    case 5:
      if (b == 0) {
        print("Error: Módulo por 0.");
      } else {
        resultado = a % b;
        print("El módulo de $a % $b es: $resultado");
      }
      break;
    case 6:
      resultado = a * a;
      print("El cuadrado de $a es: $resultado");
      break;
    case 7:
      if (a < 0) {
        print("Error: No se puede calcular la raíz cuadrada de un número negativo.");
      } else {
        resultado = sqrt(a);
        print("La raíz cuadrada de $a es: $resultado");
      }
      break;
    case 8:
      resultado = pow(a, b).toDouble();
      print("$a elevado a la potencia $b es: $resultado");
      break;
    case 9:
      resultado = (a / 100) * b;
      print("$a% de $b es: $resultado");
      break;
    case 10:
      if (a > b) {
        double temp = a;
        a = b;
        b = temp;
      }
      int numAleatorio = Random().nextInt((b - a).toInt() + 1) + a.toInt();
      print("Número aleatorio entre $a y $b: $numAleatorio");
      break;
    default:
      print("Opción no válida.");
  }
}
