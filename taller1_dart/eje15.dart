void main() {
  for (int tabla = 1; tabla <= 10; tabla++) {
    print(" Tabla del $tabla:");
    for (int i = 1; i <= 10; i++) {
      print("$tabla x $i = ${tabla * i}");
    }
    print(""); // Línea en blanco entre tablas
  }
}
