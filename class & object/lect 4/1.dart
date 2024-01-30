import 'dart:io';

void main() {
  int num1, num2;
  stdout.write("enter the value of number 1:");
  num1 = int.parse(stdin.readLineSync()!);
  stdout.write("enter the value of number 2:");
  num2 = int.parse(stdin.readLineSync()!);

  try {
    if (num2 == 0) {}
    int ans = num1 ~/ num2;
    print("ansner=$ans");
  } on IntegerDivisionByZeroException {
    print('Cannot divide by zero');
  }
}
