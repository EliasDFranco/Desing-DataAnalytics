import 'dart:io';

void main() {
  stdout.write("Ingrese la cantidad de filas: ");
  int f = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la cantidad de columnas");
  int c = int.parse(stdin.readLineSync()!);

  List<List<int>> Matriz1 = List.generate(f, (_) => List.filled(c, 0));

  print("Ingrese los elementos de la primera matriz: ");

  for (int X = 0; X < f; X++) {
    for (int Y = 0; Y < c; Y++) {
      stdout.write("$Matriz1[$X][$Y]: ");
      Matriz1[X][Y] = int.parse(stdin.readLineSync()!);
    }
  }

  stdout.write('Ingrese la cantidad de filas de la segunda matriz:');
  int f2 = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la cantidad de columnas para la segunda matriz');
  int c2 = int.parse(stdin.readLineSync()!);

  List<List<int>> Matriz2 = List.generate(f, (_) => List.filled(c, 0));
  print('Ingrese los elementos de la segunda matriz>');

  for (int X = 0; X < f2; X++) {
    for (int Y = 0; Y < c2; Y++) {
      stdout.write('${Matriz2[X][Y]}');
      Matriz2[X][Y] = int.parse(stdin.readLineSync()!);
    }
  }

// Suma de ambas matrices
  if (f == f2 && c == c2) {
    List<List<int>> matrizSuma = List.generate(f, (_) => List.filled(c, 0));

    for (int X = 0; X < f; X++) {
      for (int Y = 0; Y < c; Y++) {
        matrizSuma[X][Y] = Matriz1[X][Y] + Matriz2[X][Y];
      }
    }

    print('La matriz resultante de la suma es:');
    for (int X = 0; X < f; X++) {
      for (int Y = 0; Y < c; Y++) {
        stdout.write('${matrizSuma[X][Y]}');
      }
    }
  }

  // Multiplicacion de ambas matrices

  if (c == f2) {
    List<List<int>> matrizMultiplicada =
        List.generate(f, (_) => List.filled(c2, 0));

    for (int X = 0; X < f; X++) {
      for (int Y = 0; Y < c2; Y++) {
        for (int Z = 0; Z < c; Z++) {
          matrizMultiplicada[X][Y] += Matriz1[X][Z] * Matriz2[Y][Z];
        }
      }
    }
    print('Matriz resultante de la multiplicacion es');
    for (int X = 0; X < f; X++) {
      for (int Y = 0; Y < c2; Y++) {
        stdout.write('${matrizMultiplicada[X][Y]}');
      }
    }
  }
}
