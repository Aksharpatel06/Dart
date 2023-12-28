import 'dart:io';

void main() {
  stdout.write("enter the num1:");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("enter the num2:");
  int num2 = int.parse(stdin.readLineSync()!);

  int mul = num1 * num2;

  print("multiplication is $mul");
}
