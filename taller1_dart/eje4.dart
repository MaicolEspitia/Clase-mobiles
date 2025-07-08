import 'dart:io';

void main() {
  // Solicitar el primer número
  stdout.write("Ingrese el primer número (A): ");
  double numeroA = double.parse(stdin.readLineSync() ?? "0");

  // Solicitar el segundo número
  stdout.write("Ingrese el segundo número (B): ");
  double numeroB = double.parse(stdin.readLineSync() ?? "0");

  // Realizar la resta
  double resultado = numeroA - numeroB;

  // Mostrar el resultado
  print("La diferencia del número $numeroA con el número $numeroB es: $resultado");
}
