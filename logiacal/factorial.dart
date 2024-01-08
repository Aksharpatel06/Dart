import 'dart:io';

void main() {
  stdout.write("enter the last number:");
  int n = int.parse(stdin.readLineSync()!);
  int factorial = 1;
  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }
  print("1 to $n no factorial: $factorial");
}
