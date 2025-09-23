/*Ingresar el vector A de N elementos numéricos. Se debe ingresar previamente N y validar
que no sea un valor negativo ni cero, ni con decimales, debe ser par.
Imprima el vector original, indicando el mensaje “Vector original”, y luego el mismo vector A
resultante con el mensaje “Vector Resultado”
Luego, haga que cada elemento de posición impar, se reemplace, realizando la operación
de restar el elemento siguiente de posición par del elemento impar */

void main() {
  List<int> vectorA = [50, 20, 27, 11, 65, 40, 80, 21, 20];
  List<int> vectorResultante = [];

  int Numero = vectorA.length;
  if (Numero <= 0) {
    print("El valor no puede ser negativo ni cero");
  } else if (Numero % 2 == 0) {
    print("El valor es par");
  }

  print("El vector original es : $vectorA");

  for (int x = 0; x < vectorA.length; x++) {
    if ((x + 1) % 2 != 0 && x + 1 < vectorA.length) {
      vectorResultante.add(vectorA[x] - vectorA[x + 1]);
    } else {
      vectorResultante.add(vectorA[x]);
    }
  }
  print("Vector Resultante:  $vectorResultante");
}
