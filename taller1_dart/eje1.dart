void main() {
  // Constantes
  const String nombre = "Maicol Stiven";
  const String sexo = "Masculino";
  const int edad = 22;
  const double salario = 1500.75;
  const bool tieneVehiculo = true;

  // Concatenación y salida por pantalla
  print("Nombre: $nombre");
  print("Sexo: $sexo");
  print("Edad: $edad");
  print("Salario: \$${salario.toStringAsFixed(2)}");
  print("¿Tiene vehículo?: ${tieneVehiculo ? "Sí" : "No"}");
}
