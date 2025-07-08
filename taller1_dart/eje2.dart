import 'dart:io';

void main() {
  // Solicitar datos al usuario
  stdout.write("Ingrese su nombre: ");
  String nombre = stdin.readLineSync() ?? "";

  stdout.write("Ingrese su sexo: ");
  String sexo = stdin.readLineSync() ?? "";

  stdout.write("Ingrese su edad: ");
  int edad = int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Ingrese su salario (puede incluir centavos): ");
  double salario = double.parse(stdin.readLineSync() ?? "0.0");

  stdout.write("¿Tiene vehículo? (sí/no): ");
  String respuestaVehiculo = stdin.readLineSync()?.toLowerCase() ?? "no";
  bool tieneVehiculo = respuestaVehiculo == "sí" || respuestaVehiculo == "si";

  // Mostrar datos en pantalla
  print("\n--- Datos Ingresados ---");
  print("Nombre: $nombre");
  print("Sexo: $sexo");
  print("Edad: $edad");
  print("Salario: \$${salario.toStringAsFixed(2)}");
  print("¿Tiene vehículo?: ${tieneVehiculo ? "Sí" : "No"}");
}
