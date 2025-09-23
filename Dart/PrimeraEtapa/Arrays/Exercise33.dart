void main() {
  List<int> numCambiados = [1, 2, 3, 4, 5];

  int num = numCambiados.length;
  for (int x = 0; x < num ~/ 2; x++) {
    int temp = numCambiados[x];
    numCambiados[x] = numCambiados[num - 1 - x];
    numCambiados[num - 1 - x] = temp;
  }

  print(numCambiados);
}
