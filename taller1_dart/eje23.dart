import 'dart:io';

void main() {
  // Vector de campos
  List<String> campos = ["nombre", "apellido", "edad", "estado", "teléfono"];

  // Matriz de 4x5 para 4 compañeros con 5 campos cada uno
  List<List<String>> matriz = List.generate(4, (_) => List.filled(5, ""));

  print(" Ingreso de datos de 4 compañeros:");

  // Llenar la matriz con datos ingresados por el usuario
  for (int i = 0; i < 4; i++) {
    print("\n Ingresando datos del compañero ${i + 1}:");
    for (int j = 0; j < 5; j++) {
      stdout.write("Ingrese ${campos[j]}: ");
      matriz[i][j] = stdin.readLineSync() ?? "";
    }
  }

  // Mostrar los datos de forma organizada
  print("\n Datos ingresados:\n");

  // Encabezado
  for (var campo in campos) {
    stdout.write(campo.padRight(15)); // Ajustar ancho de columna
  }
  print("\n" + "-" * 75);

  // Mostrar cada fila (compañero)
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write(matriz[i][j].padRight(15));
    }
    print("");
  }
}
