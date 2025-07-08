import 'dart:io';

// 1. Sin parámetros y sin retorno de valor
void sumarSinParametrosSinRetorno() {
  stdout.write("Ingrese el primer número: ");
  int a = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Ingrese el segundo número: ");
  int b = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  int suma = a + b;
  print(" Resultado: $a + $b = $suma");
}

// 2. Con parámetros y sin retorno de valor
void sumarConParametrosSinRetorno(int a, int b) {
  int suma = a + b;
  print(" Resultado: $a + $b = $suma");
}

// 3. Sin parámetros y con retorno de valor
int sumarSinParametrosConRetorno() {
  stdout.write("Ingrese el primer número: ");
  int a = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Ingrese el segundo número: ");
  int b = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  return a + b;
}

// 4. Con parámetros y con retorno de valor
int sumarConParametrosConRetorno(int a, int b) {
  return a + b;
}

void main() {
  bool salir = false;

  while (!salir) {
    print("\n Menú de funciones para sumar:");
    print("1. Sin parámetros y sin retorno de valor");
    print("2. Con parámetros y sin retorno de valor");
    print("3. Sin parámetros y con retorno de valor");
    print("4. Con parámetros y con retorno de valor");
    print("5. Salir");

    stdout.write("Seleccione una opción (1-5): ");
    int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    switch (opcion) {
      case 1:
        sumarSinParametrosSinRetorno();
        break;

      case 2:
        stdout.write("Ingrese el primer número: ");
        int a = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

        stdout.write("Ingrese el segundo número: ");
        int b = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

        sumarConParametrosSinRetorno(a, b);
        break;

      case 3:
        int resultado = sumarSinParametrosConRetorno();
        print(" Resultado de la suma: $resultado");
        break;

      case 4:
        stdout.write("Ingrese el primer número: ");
        int a = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

        stdout.write("Ingrese el segundo número: ");
        int b = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

        int resultado = sumarConParametrosConRetorno(a, b);
        print(" Resultado de la suma: $resultado");
        break;

      case 5:
        print(" Saliendo del programa.");
        salir = true;
        break;

      default:
        print(" Opción no válida. Intente nuevamente.");
    }
  }
}
