import 'dart:io';

void main() {
  stdout.write("Ingrese un número para ver su tabla de multiplicar: ");
  int numero = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (numero <= 0) {
    print(" Por favor ingrese un número mayor a 0.");
  } else {
    print("\n Tabla de multiplicar del $numero:");
    for (int i = 1; i <= 10; i++) {
      int resultado = numero * i;
      print("$numero x $i = $resultado");
    }
  }
}
