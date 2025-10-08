/* Lea N x M números (N y M deben ser leídos y validados) y almacénelos en
una matriz (por filas), y:
a) Señale si la matriz es cuadrada
b) Determine y muestre el promedio de los N x M números
c) Determine y muestre el promedio por fila
d) Determine y muestre el promedio por columna */

import 'dart:io';

void main() {
  stdout.write("Ingresa las filas dde la matriz");
  int rows = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese las columnas de la matriz");
  int columns = int.parse(stdin.readLineSync()!);

  List<List<int>> Matriz = List.generate(rows, (_) => List.filled(columns, 0));

  print("Ingrese los valores de la matriz: ");
  for (int x = 0; x < rows; x++) {
    for (int j = 0; j < columns; j++) {
      stdout.write("${Matriz[x][j]}");
      Matriz[x][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print("Verificación de si la matriz es cuadrada o no");
  for (int x = 0; x < rows; x++) {
    for (int j = 0; j < columns; j++) {
      if (rows == columns) {
        print("La Matriz si es cuadrada: ${Matriz[x][j]}");
      } else {
        print("La matriz no es cuadrada, no tiene las mismas dimensiones ");
      }
    }
  }
}
