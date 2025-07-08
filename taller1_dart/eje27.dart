import 'dart:io';

void main() {
  // -------------------- MATRIZ DE PRODUCTOS --------------------
  // 4 filas: ID, Nombre, Precio, ¿Tiene IVA?
  List<List<String>> productos = [
    ["P001", "P002", "P003", "P004", "P005", "P006", "P007", "P008", "P009", "P010"], // ID
    ["Leche", "Arroz", "Huevos", "Aceite", "Pan", "Queso", "Café", "Azúcar", "Sal", "Galletas"], // Nombre
    ["3000", "2500", "600", "8000", "1000", "5500", "7000", "2200", "500", "3500"], // Precio por unidad
    ["sí", "no", "sí", "sí", "no", "sí", "sí", "no", "no", "sí"] // Tiene IVA (19%)
  ];

  // -------------------- MATRIZ DE FACTURA --------------------
  // Columnas: Ítem, ID, Nombre, Cantidad, Valor Unidad, IVA, Valor Total
  List<List<String>> factura = List.generate(11, (_) => List.filled(7, ""));

  int item = 1;
  bool seguir = true;
  const double IVA = 0.19;

  while (seguir && item <= 10) {
    stdout.write("\nIngrese el ID del producto: ");
    String id = stdin.readLineSync()?.trim().toUpperCase() ?? "";

    // Buscar índice del producto
    int index = productos[0].indexOf(id);

    if (index == -1) {
      print(" Producto no encontrado.");
      continue;
    }

    stdout.write(" Ingrese la cantidad: ");
    int cantidad = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    if (cantidad <= 0) {
      print(" Cantidad inválida.");
      continue;
    }

    String nombre = productos[1][index];
    double precio = double.parse(productos[2][index]);
    bool tieneIva = productos[3][index].toLowerCase() == "sí";
    double iva = tieneIva ? precio * IVA * cantidad : 0;
    double total = (precio * cantidad) + iva;

    // Guardar en matriz de factura
    factura[item][0] = item.toString(); // Ítem
    factura[item][1] = id;
    factura[item][2] = nombre;
    factura[item][3] = cantidad.toString();
    factura[item][4] = precio.toStringAsFixed(2);
    factura[item][5] = iva.toStringAsFixed(2);
    factura[item][6] = total.toStringAsFixed(2);

    item++;

    // Preguntar si desea otro producto
    if (item <= 10) {
      stdout.write(" ¿Desea agregar otro producto? (s/n): ");
      String respuesta = stdin.readLineSync()?.trim().toLowerCase() ?? "n";
      seguir = respuesta == "s";
    } else {
      print(" Límite de productos alcanzado (10).");
    }
  }

  // -------------------- IMPRIMIR FACTURA --------------------
  print("\n FACTURA:");
  print("---------------------------------------------------------------");
  print("Ítem | ID    | Producto | Cant | Valor U | IVA     | Total");
  print("---------------------------------------------------------------");

  double totalGeneral = 0;

  for (int i = 1; i < item; i++) {
    print("${factura[i][0].padRight(5)}| ${factura[i][1].padRight(5)} | ${factura[i][2].padRight(9)}| ${factura[i][3].padRight(5)}| \$${factura[i][4].padLeft(7)} | \$${factura[i][5].padLeft(7)} | \$${factura[i][6].padLeft(7)}");
    totalGeneral += double.tryParse(factura[i][6]) ?? 0;
  }

  print("---------------------------------------------------------------");
  print(" TOTAL GENERAL: \$${totalGeneral.toStringAsFixed(2)}");
}
