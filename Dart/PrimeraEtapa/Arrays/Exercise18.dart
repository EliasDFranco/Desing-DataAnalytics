import 'dart:io';

void main() {
  // Creo el vector con  5 elementos
  List<int> numObligados = [1, 2, 3, 4, 5];

  int numero = 0;

  // Uso un while para que se ingrese la cantidad admitida
  while (numObligados.length < 10) {
    stdout.write("Ingrese un número, por favor: "); // Así es se hace un pedido para que se ingrese un valor
    String? numeroIngresado = stdin.readLineSync();  // Aqui se lee el valor

    // En este if veo si no es nulo o que este vacio 
    if (numeroIngresado != null && numeroIngresado!.isNotEmpty) {
      numero = int.parse(numeroIngresado!); // Si pasa el si, lo convierto en entero
    }
    if (!numObligados.contains(numero)) { // Si el valor no esta en mi vector, se agrega el numero
      numObligados.add(numero);
    } else {
      print("El número ya esta en el vector");
    }
  }
  print("El vector final sin repetición es: $numObligados");
}
