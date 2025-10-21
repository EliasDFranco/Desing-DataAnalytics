import 'dart:io';

void main() {
  stdout.write('Ingrese la cantidad de filas de la matriz');
  int filas = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la cantidad de columnas de la matriz');
  int columnas = int.parse(stdin.readLineSync()!);

  List<List<int>> MatrizNormal =
      List.generate(filas, (_) => List.filled(columnas, 0));

  print('Ingrese los elementos de la matriz:');
  for (int x = 0; x < filas; x++) {
    for (int j = 0; j < columnas; j++) {
      stdout.write('${MatrizNormal[x][j]}');
      MatrizNormal[x][j] = int.parse(stdin.readLineSync()!);
      if (MatrizNormal[x][j] < 0) {
        MatrizNormal[x][j] = 0;
      } else {
        MatrizNormal[x][j] = 9;
      }
    }
  }
  print('Matriz Resultante: ');

  for (int x = 0; x < filas; x++) {
    for (int j = 0; j < columnas; j++) {
      stdout.write('${MatrizNormal[x][j]}');
    }
  }
}
