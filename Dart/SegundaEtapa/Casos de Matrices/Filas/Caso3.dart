// Por fila ; izq a der ; abaj hacia arri

import "dart:io";

void main() {
  int f = 5;
  int n = 4;

  List<List<int>> Matriz = List.generate(f, (_) => List.filled(n, 0));

  int numerito = 0;

  for (int x = f - 1; x >= 0; x--) {
    for (int y = 0; y < n; y++) {
      numerito++;
      Matriz[x][y] = numerito;
    }
  }
  // Impresión de la matriz

  for(int x = 0; x < f; x++){
    for(int y = 0; y < n; y++){
      stdout.write("Matriz impresa: ${Matriz[x][y]}!");
    }
    print(" ");
  }
}
