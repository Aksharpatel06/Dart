import 'dart:io';

void main() {
  int num1, num2;
  stdout.write("enter the value of number 1:");
  num1 = int.parse(stdin.readLineSync()!);
  stdout.write("enter the value of number 2:");

  try {
    num2 = int.parse(stdin.readLineSync()!);

    print(num1 / num2);
  } catch (e) {
    print("enter valid input $e");
  }
}
