import 'dart:io';

void main() {
  var a, b;
  print("enter the num1:");
  a = int.parse(stdin.readLineSync()!);
  print("enter the num2:");
  b = int.parse(stdin.readLineSync()!);

  print("num1:$a and num2:$b");
  print('a+b=${a + b}');
}
