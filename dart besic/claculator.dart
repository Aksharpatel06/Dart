import 'dart:io';

void main() {
  int n;
  double sum, sub, mul, div, mod;
  print("1.additon");
  print("2.subtraction");
  print("3.multiplication");
  print("4.division");
  print("5.modular");

  stdout.write("enter the choice:");
  n = int.parse(stdin.readLineSync()!);

  double n1, n2;

  stdout.write("enter the first number:");
  n1 = double.parse(stdin.readLineSync()!);

  stdout.write("enter the secoud number:");
  n2 = double.parse(stdin.readLineSync()!);
  switch (n) {
    case 1:
      sum = n1 + n2;
      print("addition:$sum");

    case 2:
      sub = n1 - n2;
      print("subtraction:$sub");

    case 3:
      mul = n1 * n2;
      print("multiplication:$mul");

    case 4:
      div = n1 / n2;
      print("division:$div");

    case 5:
      mod = n1 % n2;
      print("modular:$mod");

    default:
      print("enter the valid option!");
  }
}
