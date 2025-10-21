// Por fila ; der a izq ; abajo hacia arrib

import "dart:io";

void main() {
  int f = 5;
  int c = 4;

  List<List<int>> Matriz = List.generate(f, (_) => List.filled(c, 0));

  int numerito = 0;

  for (int x = f - 1; x >= 0; x--) {
    for (int y = c - 1; y >= 0; y--) {
      numerito++;
      Matriz[x][y] = numerito;
    }
  }
  // Impresión de la matriz

  for (int x = 0; x < f; x++) {
    for (int y = 0; y < c; y++) {
      stdout.write("${Matriz[x][y]}!");
    }
    print(" ");
  }
}