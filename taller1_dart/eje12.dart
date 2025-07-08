import 'dart:math';

void main() {
  final random = Random();
  int intentos = 0;

  while (intentos < 3) {
    // Generar dos números aleatorios del 1 al 6
    int dado1 = random.nextInt(6) + 1;
    int dado2 = random.nextInt(6) + 1;

    print(" Lanzamiento ${intentos + 1}: Dado 1 = $dado1, Dado 2 = $dado2");

    if (dado1 == dado2) {
      if (intentos < 2) {
        print(" Lanzar de nuevo (sacaste par)...");
      } else {
        print(" ¡Saca una ficha!");
      }
    } else {
      print(" ¡Lanza de nuevo!");
      break; // Sale del ciclo si no se sacó un par
    }

    intentos++;
  }
}
