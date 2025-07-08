import 'dart:io';
import 'dart:math';

void main() {
  print("=== CÁLCULO DE MATERIAL PARA CONSTRUIR UN CILINDRO CON TAPA ===");

  // Solicitar datos
  stdout.write("Ingrese el radio del cilindro (cm): ");
  double radio = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Ingrese la altura del cilindro (cm): ");
  double altura = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  // Validar datos
  if (radio <= 0 || altura <= 0) {
    print(" El radio y la altura deben ser mayores que cero.");
  } else {
    // Área lateral: 2πrh
    double areaLateral = 2 * pi * radio * altura;

    // Área de las dos tapas (círculos): 2πr²
    double areaTapas = 2 * pi * pow(radio, 2);

    // Área total del material
    double areaTotal = areaLateral + areaTapas;

    // Perímetro de la base (circunferencia)
    double perimetroBase = 2 * pi * radio;

    // Volumen del cilindro: πr²h
    double volumen = pi * pow(radio, 2) * altura;

    // Mostrar resultados
    print("\n Resultados:");
    print(" Área total (material necesario): ${areaTotal.toStringAsFixed(2)} cm²");
    print(" Perímetro de la base: ${perimetroBase.toStringAsFixed(2)} cm");
    print(" Volumen del cilindro: ${volumen.toStringAsFixed(2)} cm³");
  }
}
