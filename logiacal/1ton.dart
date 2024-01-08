import 'dart:io';

void main() {
  stdout.write("enter the last number:");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    stdout.write("$i ");
  }
}
