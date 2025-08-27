/* Ingresar un vector A de 10 componentes (o elementos) numéricos. 
Imprimir el vector */

void main() {
  List<int> numbers = List<int>.generate(11, (index) => index);

  for (int elem = 0; elem < 11; elem++) {
    numbers.add(elem);
    print("Element N°: ${numbers[elem]}");
  }
  print("Array: $numbers");
}
