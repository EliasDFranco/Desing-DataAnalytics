import 'dart:io';

void main() {
  while (true) {
    stdout.write('Ingresar nombre hasta 8 caracteres: ');
    String? mat = stdin.readLineSync();

    if (mat != null && mat.length < 8) {
      for (int x = 0; x < mat.length; x++) {
        for (int y = 0; y <= mat.length; y++) {
          String sub = (x % 2 == 0)
              ? mat.substring(0, mat.length - y)
              : mat.substring(0, y);
          stdout.write('$sub ');
        }
      }
      break;
    } else {
      print("El límite del nombre son 8 caracteres.");
    }
  }
}
