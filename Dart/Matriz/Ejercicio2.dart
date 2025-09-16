/*Leer una matriz C de orden P (matriz cuadrada). Mostrar los elementos de
la diagonal principal, secundaria, de la matriz triangular superior y de la
matriz triangular inferior*/
import 'dart:io';

void main() {
  stdout.write("Ingrese el orden de la matriz cuadrada");
  int P = int.parse(stdin.readLineSync()!);

  List<List<int>> Matriz = List.generate(P, (_) => List.filled(P, 0));

  print("Ingrese los elementos de la matriz");
  for (int x = 0; x < P; x++) {
    for (int j = 0; j < P; j++) {
      stdout.write("Matriz[$x][$j]");
      Matriz[x][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print("Diagonal Principal");
  for (int x = 0; x < P; x++) {
    stdout.write("${Matriz[x][x]}");
  }

  print("Diagonal Secundaria");
  for (int x = 0; x < P; x++) {
    for (int j = 0; j < P; j++) {
      stdout.write("${Matriz[x][P - x - 1]}");
    }
  }

  print("MATRIZ Superior");
  for (int x = 0; x < P; x++) {
    for (int j = 0; j < P; j++) {
      if (x <= j) {
        stdout.write("${Matriz[x][j]}");
      } else {
        stdout.write("");
      }
    }
  }

  print("Matriz inferior");
  for (int x = 0; x < P; x++) {
    for (int j = 0; x < P; j++) {
      if (x >= j) {
        stdout.write("${Matriz[x][j]}");
      } else {
        stdout.write("");
      }
    }
  }
}
