import 'dart:io';

void main() {
  List<int> dineroDesglose = [
    100000,
    50000,
    20000,
    10000,
    5000,
    2000,
    1000,
    500,
    100,
    50,
    10,
    5,
    1
  ];

  int monto = 100;

  for (int x in dineroDesglose) {
    int cantidad = monto ~/ x;
    if (cantidad < 0) {
      monto % x;
    }
  }
  print("$dineroDesglose");
}
