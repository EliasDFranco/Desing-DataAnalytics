void main() {
  List<String> vocales = ["A", "E", "I", "O", "U"];

  while (vocales < 0) {
    String letraIngresada = stdin.readLineSync("Ingrese una letra");
    for (int x in vocales) {
      if (vocales[x] == letraIngresada) {}
    }
  }
}
