import 'dart:io';

void main() {
  stdout.write("Ingrese un número entero positivo: ");
  String entrada = stdin.readLineSync() ?? "";

  // Validar que sea un número válido y positivo
  int? numero = int.tryParse(entrada);

  if (numero == null || numero < 0) {
    print(" Debe ingresar un número entero positivo válido.");
  } else {
    List<String> digitos = entrada.split('');
    
    print("\n Descomposición del número:");
    for (int i = 0; i < digitos.length; i++) {
      print("Dígito ${i + 1}: ${digitos[i]}");
    }

    print(" El número tiene ${digitos.length} dígito(s).");
  }
}
