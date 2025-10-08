/*
Ingresar un vector A de N elementos numéricos. Se debe ingresar previamente N y validar
que no sea un valor negativo ni cero, ni con decimales.
Luego, el programa debe contar cuántos elementos son mayores al promedio de todos
los elementos del vector.
Finalmente, imprima el promedio calculado y la cantidad de elementos que son mayores a
ese promedio, su posición y valor.
*/

void main(){

  List<int> vectorA = [10,15,20,7,8,9];

  int numeros = vectorA.length;

  if(numeros <=0 || numeros < 0.toInt()){
    print("El número no puede ser ngativo ni cero y tampoco decimal");
  }
}