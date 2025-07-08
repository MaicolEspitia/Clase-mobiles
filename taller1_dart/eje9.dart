import 'dart:io';
import 'dart:math';

void main() {
  int opcion = 0;

  while (opcion != 4) {
    // Mostrar menú
    print("\n===== MENÚ DE FIGURAS GEOMÉTRICAS =====");
    print("1. Triángulo");
    print("2. Rectángulo");
    print("3. Círculo");
    print("4. Salir");

    stdout.write("Seleccione una opción (1-4): ");
    opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    switch (opcion) {
      case 1: // Triángulo
        stdout.write("Ingrese la base del triángulo: ");
        double base = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        stdout.write("Ingrese la altura del triángulo: ");
        double altura = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        stdout.write("Ingrese el lado 1 del triángulo: ");
        double lado1 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        stdout.write("Ingrese el lado 2 del triángulo: ");
        double lado2 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        stdout.write("Ingrese el lado 3 del triángulo: ");
        double lado3 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        if (base <= 0 || altura <= 0 || lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
          print(" Los valores deben ser mayores a cero.");
        } else {
          double area = (base * altura) / 2;
          double perimetro = lado1 + lado2 + lado3;
          print(" Figura: Triángulo");
          print(" Área: ${area.toStringAsFixed(2)} unidades cuadradas");
          print(" Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
        }
        break;

      case 2: // Rectángulo
        stdout.write("Ingrese la base del rectángulo: ");
        double base = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        stdout.write("Ingrese la altura del rectángulo: ");
        double altura = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        if (base <= 0 || altura <= 0) {
          print(" Los valores deben ser mayores a cero.");
        } else {
          double area = base * altura;
          double perimetro = 2 * (base + altura);
          print(" Figura: Rectángulo");
          print(" Área: ${area.toStringAsFixed(2)} unidades cuadradas");
          print(" Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
        }
        break;

      case 3: // Círculo
        stdout.write("Ingrese el radio del círculo: ");
        double radio = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        if (radio <= 0) {
          print(" El radio debe ser mayor a cero.");
        } else {
          double area = pi * pow(radio, 2);
          double perimetro = 2 * pi * radio;
          print(" Figura: Círculo");
          print(" Área: ${area.toStringAsFixed(2)} unidades cuadradas");
          print(" Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
        }
        break;

      case 4:
        print(" Saliendo del programa...");
        break;

      default:
        print(" Opción no válida. Intente nuevamente.");
    }
  }
}
