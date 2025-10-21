import 'dart:io';

void main (){

  int filas = 5;
  int columnas = 5;

  List<List<String>> Matriz = List.generate(filas, (_) => List.filled(columnas, '0'));

  for(int x = 0; x < filas ; x++){
    for(int y = 0; y < columnas ; y++){
      if(x == y || x + y == columnas - 1 ){
        Matriz[x][y] = "#";
      }
      else if(x  < y && x + y < columnas - 1){
        Matriz[x][y] = 'A';
      }
      else if(x < y && x + y > columnas - 1){
        Matriz[x][y] = "B";
      }
      else if(x > y && x + y < columnas - 1){
        Matriz[x][y] = "C";
      }
      else {
        Matriz[x][y] = "D";
      }
    }
    
    }
    for(var fila in Matriz){
      print(fila.join(" "));
  }
}