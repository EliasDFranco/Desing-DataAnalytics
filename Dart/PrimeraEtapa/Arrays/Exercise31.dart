void main() {
  List<int> numerosPrimos = [];
  int counter = 0;
  int x = 2;

  while (counter < 20) {
    if (x == 1) {
      numerosPrimos.add(x);
      counter++;
    } else if (siNumeroPrimo(x)) {
      numerosPrimos.add(x);
      counter++;
    }
    x++;
  }

  print("Los 20 numeros primos son: $numerosPrimos");
}

bool siNumeroPrimo(int numero) {
  if (numero <= 0) {
    return false;
  }
  for (int x = 2; x * x <= numero; x++) {
    if (numero % x == 0) {
      return false;
    }
  }
  return true;
}
