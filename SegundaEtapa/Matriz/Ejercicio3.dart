/* Leer una matriz X de orden A x B y hallar su transpuesta. Mostrar ambas
matrices.*/

import 'dart:io';

void main() {
  stdout.write("Ingresa las filas de la matriz");
  int filas = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese las columnas de lña matriz ");
  int columnas = int.parse(stdin.readLineSync()!);
  List<List<int>> Matriz =
      List.generate(filas, (_) => List.filled(columnas, 0));

  print("Ingrese los elementos de la matriz");
  for (int x = 0; x < filas; x++) {
    for (int j = 0; j < columnas; j++) {
      stdout.write("Matriz[$x][$j]");
      Matriz[x][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print("La matriz traspuestada, cambiada de lugar");
  List<List<int>> MatrizTraspuesta =
      List.generate(columnas, (j) => List.generate(filas, (x) => Matriz[j][x]));

  print("Matriz traspuestada");
  for (var fila in MatrizTraspuesta) {
    print(fila);
  }
}
