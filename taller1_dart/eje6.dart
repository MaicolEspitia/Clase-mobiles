import 'dart:io';

void main() {
  // Solicitar el primer número
  stdout.write("Ingrese el primer número (A): ");
  double numeroA = double.parse(stdin.readLineSync() ?? "0");

  // Solicitar el segundo número
  stdout.write("Ingrese el segundo número (B): ");
  double numeroB = double.parse(stdin.readLineSync() ?? "0");

  // Verificar si el divisor es cero
  if (numeroB == 0) {
    print("Imposible la división por 0.");
  } else {
    double resultado = numeroA / numeroB;
    print("La división del número $numeroA entre el número $numeroB es: $resultado");
  }
}
