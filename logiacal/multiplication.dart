import 'dart:io';

void main() {
  stdout.write("enter the table number:");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    print("$n * $i = ${i * n}");
  }
}
