/*
Ingresar un vector C de N elementos numéricos. Se debe ingresar previamente N y validar
que no sea un valor negativo ni cero, ni con decimales.

Luego, se deben separar los elementos del vector en dos nuevos vectores: uno para los
números pares (vector A) y otro para los impares (vector B).

Finalmente, se debe imprimir cada uno de los vectores resultantes, aclarando si alguno no
fue creado (ejemplo, no hubo elementos pares).

Observación: Haga el ejercicio, pensando cómo evitar que tanto el vector A y/o el vector B
no tengan lugares vacíos.
 */

import 'dart:io';

void main() {
  List<int> vectorC = [10, 20, 102, 102, 32, 129, 394, 203]; // Vector Original
  List<int> vectorA = []; // Vector para números primos
  List<int> vectorB = []; // Vector para número impares

  int N = 0;

  if (N < 0) {
    print("El valor no debe de ser negativo");
  } else if (N % 1 != 0) {
    print("El valor de debe de ser cero");
  } else if (N < 0.toInt()) {
    print("El valor no debe de tener decimales");
  } else {
    // En este bucle for recorremos el vector y dependiendo si es par o impar, se agrega en un  Vector A o Vector B
    for (int x = 0; x < vectorC.length; x++) {
      if (vectorC[x] % 2 == 0) {
        vectorA.add(vectorC[x]);
      } else {
        vectorB.add(vectorC[x]);
      }
    }
    print("El vector C Origianl: $vectorC");
    print("Vector A con números parwes: $vectorA");
    print("Vector B con números impaes: $vectorB");
  }
}
