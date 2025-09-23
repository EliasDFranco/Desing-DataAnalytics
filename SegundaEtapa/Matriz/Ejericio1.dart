/*. Leer una matriz A de orden M x N y un número K. Multiplicar todos los
elementos de la matriz por el número K. Mostrar la matriz resultante.
*/

import 'dart:io';

void main() {
  stdout.write("Ingrese el número de filas: (filas)");
  int filas = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el númeor de columnas: (colunas)");
  int columnas = int.parse(stdin.readLineSync()!);

  List<List<int>> Matriz =
      List.generate(filas, (_) => List.filled(columnas, 0));

  print("Agregue los elementos de la matriz: ");
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      stdout.write("La matriz: [$i][$j]");
      Matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  stdout.write("Ingrese el objeto K");
  int K = int.parse(stdin.readLineSync()!);

  List<List<int>> MatrizMultiplicada = List.generate(
      filas, (i) => List.generate(columnas, (j) => Matriz[i][j] * K));

  print("Impresión de la matriz resultante");
  for (var fila in MatrizMultiplicada) {
    print(fila);
  }
}
