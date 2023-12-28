import 'dart:io';

void main() {
  int n;

  stdout.write("enter the number:");
  n = int.parse(stdin.readLineSync()!);

  print("cube of:${n * n * n}");
}
