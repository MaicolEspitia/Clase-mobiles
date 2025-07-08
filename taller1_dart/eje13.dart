import 'dart:io';

void main() {
  // Solicitar nombre del artículo
  stdout.write("Ingrese el nombre del artículo: ");
  String nombre = stdin.readLineSync() ?? "";

  // Solicitar valor unitario
  stdout.write("Ingrese el valor unitario del artículo: ");
  double valorUnidad = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  // Solicitar cantidad a llevar
  stdout.write("Ingrese la cantidad a llevar: ");
  int cantidad = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  // Preguntar si es de la canasta familiar
  stdout.write("¿El artículo es de la canasta familiar? (sí/no): ");
  String respuesta = (stdin.readLineSync() ?? "").toLowerCase();
  bool esCanastaFamiliar = respuesta == "sí" || respuesta == "si";

  // Calcular total
  double subtotal = valorUnidad * cantidad;
  double total = esCanastaFamiliar ? subtotal : subtotal * 1.19;

  // Mostrar resultado
  print("\n Detalle de la compra:");
  print("Artículo: $nombre");
  print("Valor unitario: \$${valorUnidad.toStringAsFixed(2)}");
  print("Cantidad: $cantidad");
  print("Subtotal: \$${subtotal.toStringAsFixed(2)}");

  if (!esCanastaFamiliar) {
    double iva = subtotal * 0.19;
    print("IVA (19%): \$${iva.toStringAsFixed(2)}");
  }

  print(" Total a pagar: \$${total.toStringAsFixed(2)}");
}
