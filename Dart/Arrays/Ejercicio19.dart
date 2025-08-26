import 'dart:io';

void main() {
  List<int> numerosB = [];

  stdout.write("Ingrese un número: ");
  int? numero = int.parse(stdin.readLineSync()!);

  while (numerosB.length < numero) {
    numerosB.clear();

    for (int x = 0; x < numero; x++) {
      stdout.write("Ingrese un número:");
      int numero = int.parse(stdin.readLineSync()!);

      if (numerosB.contains(numero)) {
        print("El numero ya esta en el vector");
        break;
      } else {
        numerosB.add(numero);
      }
    }
  }
  print("El vector sin repeticiones es: $numerosB");
}

// Check