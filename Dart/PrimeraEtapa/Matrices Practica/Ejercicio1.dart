import 'dart:io';

void main() {
  while (true) {
    stdout.write('Ingresar nombre hasta 8 carcteres: ');
    String? mat = stdin.readLineSync();

    if (mat != null && mat.length < 8) {
      print('Matriz');
      for (int x = 0; x < mat.length; x++) {
        for (int y = 0; y <= mat.length; y++) {
          stdout.write('${mat.substring(0, y)} ');
        }
      }
      break;
    } else {
      print("El límite del nombre son 8 caracteres.");
    }
  }
}
