import 'dart:io';

void main(){

stdout.write("Ingrese una palabra, porfavor");
String? ingresarPalabra = stdin.readLineSync();

if ( ingresarPalabra != null){
  String? palabraMayuscula = ingresarPalabra.toUpperCase();

  List<String> vectorWord = palabraMayuscula.split("");

  print("La palabra que ingreso es $ingresarPalabra | La palabra en mayusculas es. $palabraMayuscula y el almacenado en vector: $vectorWord");
  }
}