void main() {
  List<int> num = [
    10,
    12,
    12,
    14,
    15,
    15,
    16,
    17,
    18,
    19,
    165,
    5,
    15,
    166,
    185,
    444
  ];
  print("Los elementos ordenados del final al primero son: $num[]");
}

void rotacion(List<int> num) {
  int elementoFinal = num.last;

  for (int x = num.length - 2; x >= 0; x--) {
    num[x + 1] = num[x];
  }
  num[0] = elementoFinal;
}