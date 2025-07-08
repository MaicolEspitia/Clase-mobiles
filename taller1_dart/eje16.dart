import 'dart:io';

void main() {
  stdout.write("Ingrese la cantidad de números de la serie de Fibonacci que desea ver: ");
  int cantidad = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (cantidad <= 0) {
    print(" La cantidad debe ser un número entero mayor que 0.");
  } else {
    int a = 0;
    int b = 1;

    print("\n Serie de Fibonacci con $cantidad término(s):");

    for (int i = 1; i <= cantidad; i++) {
      stdout.write("$a ");
      int siguiente = a + b;
      a = b;
      b = siguiente;
    }

    print(""); // Salto de línea final
  }
}
