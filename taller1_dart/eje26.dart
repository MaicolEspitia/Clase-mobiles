import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int acumulado = 0;

  // Solicitar número de jugadores
  stdout.write(" Ingrese la cantidad de jugadores: ");
  int jugadores = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (jugadores <= 0) {
    print(" Debe haber al menos un jugador.");
    return;
  }

  List<String> nombres = [];

  // Capturar nombres de los jugadores
  for (int i = 0; i < jugadores; i++) {
    stdout.write(" Nombre del jugador ${i + 1}: ");
    String nombre = stdin.readLineSync() ?? "Jugador${i + 1}";
    nombres.add(nombre);
  }

  print("\n ¡Comienza el juego de la Guayabita!");

  bool continuar = true;

  while (continuar) {
    for (var jugador in nombres) {
      print("\n Turno de: $jugador");
      print(" Acumulado actual: $acumulado moneda(s)");

      // Primer lanzamiento
      int primerTiro = random.nextInt(6) + 1;
      print(" Primer tiro: $primerTiro");

      if (primerTiro == 1 || primerTiro == 6) {
        print(" Perdiste por sacar $primerTiro. Debes poner una moneda al acumulado.");
        acumulado += 1;
      } else {
        if (acumulado == 0) {
          print(" No puedes apostar, el acumulado está en 0.");
          continue;
        }

        stdout.write(" ¿Cuánto deseas apostar? (1 - $acumulado): ");
        int apuesta = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

        if (apuesta <= 0 || apuesta > acumulado) {
          print(" Apuesta inválida. Se salta el turno.");
          continue;
        }

        // Segundo lanzamiento
        int segundoTiro = random.nextInt(6) + 1;
        print(" Segundo tiro: $segundoTiro");

        if (segundoTiro > primerTiro) {
          print(" ¡Ganaste $apuesta moneda(s) del acumulado!");
          acumulado -= apuesta;
        } else {
          print(" Perdiste tu apuesta. Se agrega al acumulado.");
          acumulado += apuesta;
        }
      }

      // Verificar si el acumulado llegó a 0
      if (acumulado <= 0) {
        print("\n El acumulado llegó a 0. Fin del juego.");
        continuar = false;
        break;
      }
    }
  }
}
