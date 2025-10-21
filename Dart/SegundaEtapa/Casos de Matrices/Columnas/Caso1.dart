//Por columna; izq a der ; arri hacia abaj
import "dart:io";

void main() {
  int f = 4;
  int c = 6;

  List<List<int>> Matriz = List.generate(f, (_) => List.filled(c, 0));

  int numerito = 9;

  for (int x = 0; x < c; x++) {
    for (int y = 0; y < f; y++) {
      numerito++;
      Matriz[y][x] = numerito;
    }
  }
  // Impresión de la matriz

  for (int x = 0; x < f; x++) {
    for (int y = 0; y < c; y++) {
      stdout.write(" ${Matriz[x][y]}!");
    }
    print(" ");
  }
}
