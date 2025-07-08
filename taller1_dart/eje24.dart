import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  List<List<int>> lanzamientos = [];

  int intentos = 0;

  while (intentos < 3) {
    int dado1 = random.nextInt(6) + 1;
    int dado2 = random.nextInt(6) + 1;

    lanzamientos.add([dado1, dado2]);

    print(" Lanzamiento ${intentos + 1}: [$dado1, $dado2]");

    if (dado1 == dado2) {
      if (intentos < 2) {
        print(" Lanzar de nuevo...");
      } else {
        print(" ¡Saca una ficha!");
      }
    } else {
      print(" ¡Lanza de nuevo!");
      break;
    }

    intentos++;
  }
}
