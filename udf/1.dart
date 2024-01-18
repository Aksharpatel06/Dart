import 'dart:io';

void main() {
  stdout.write("enter the number:");
  int n = int.parse(stdin.readLineSync()!);
  print("cube:${cube(n)}");
}

cube(int a) {
  int c = a * a * a;
  return c;
}
