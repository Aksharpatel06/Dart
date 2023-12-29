import 'dart:io';

void main() {
  stdout.write("enter the last number:");
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  print("1 to $n no sum: $sum");
}
