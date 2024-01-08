import 'dart:io';

void main() {
  stdout.write("enter the last number:");
  int n = int.parse(stdin.readLineSync()!);

  stdout.write("even number:");
  for (int i = 1; i <= n; i++) {
    if (i % 2 == 0) {
      stdout.write(" $i ");
    }
  }
}
