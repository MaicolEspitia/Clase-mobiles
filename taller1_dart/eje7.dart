import 'dart:io';

void main() {
  // Mostrar menú
  print("Seleccione dos colores:");
  print("1. Amarillo");
  print("2. Azul");
  print("3. Rojo");

  // Solicitar dos números
  stdout.write("Ingrese el primer número (1-3): ");
  int color1 = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Ingrese el segundo número (1-3): ");
  int color2 = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  // Combinar colores
  String resultado;

  // Validar rango
  if ((color1 < 1 || color1 > 3) || (color2 < 1 || color2 > 3)) {
    resultado = "Uno o ambos números están fuera del rango (1-3).";
  } else if (color1 == color2) {
    resultado = "Seleccionó dos veces el mismo color.";
  } else {
    // Combinar sin importar el orden
    if ((color1 == 1 && color2 == 2) || (color1 == 2 && color2 == 1)) {
      resultado = "Su combinación es verde.";
    } else if ((color1 == 1 && color2 == 3) || (color1 == 3 && color2 == 1)) {
      resultado = "Su combinación es naranja.";
    } else if ((color1 == 2 && color2 == 3) || (color1 == 3 && color2 == 2)) {
      resultado = "Su combinación es morado.";
    } else {
      resultado = "Combinación no reconocida.";
    }
  }

  // Mostrar resultado
  print(resultado);
}