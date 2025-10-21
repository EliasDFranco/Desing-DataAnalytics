import "dart:io";

void main() {
  int n = 5;
  int f = 4;

  List<List<int>> Matriz = List.generate(f, (_) => List.filled(n, 0));

  int numerito = 0;

  for (int x = 0; x < f; x++) {
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
