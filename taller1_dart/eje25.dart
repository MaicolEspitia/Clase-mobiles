import 'dart:io';

void main() {
  // 1. Solicitar tamaño del vector
  stdout.write(" ¿Cuántos números desea ingresar? ");
  int tamano = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

  if (tamano <= 0) {
    print(" Tamaño inválido. Debe ser mayor a 0.");
    return;
  }

  // 2. Crear y llenar el vector
  List<int> vector = [];

  print("\n Ingrese los $tamano número(s):");
  for (int i = 0; i < tamano; i++) {
    stdout.write(" Número ${i + 1}: ");
    int? numero = int.tryParse(stdin.readLineSync() ?? "");
    if (numero == null) {
      print(" Entrada inválida. Se agregará 0 por defecto.");
      numero = 0;
    }
    vector.add(numero);
  }

  // 3. Solicitar tipo de ordenamiento
  stdout.write("\n ¿Cómo desea ordenarlo? (ascendente / descendente): ");
  String orden = (stdin.readLineSync() ?? "").trim().toLowerCase();

  // 4. Ordenar según opción
  if (orden == "ascendente") {
    vector.sort(); // Orden natural (menor a mayor)
  } else if (orden == "descendente") {
    vector.sort((a, b) => b.compareTo(a)); // Orden inverso (mayor a menor)
  } else {
    print(" Opción inválida. Se mostrará el vector sin ordenar.");
  }

  // 5. Mostrar vector final
  print("\n Resultado (${orden == "ascendente" || orden == "descendente" ? orden : "sin ordenar"}):");
  for (int i = 0; i < vector.length; i++) {
    print("🔹 Índice $i ➝ Valor: ${vector[i]}");
  }
}
