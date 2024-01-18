import 'dart:io';

void main() {
  int n;

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
      print("addition:${addition(n1, n2)}");

    case 2:
      print("subtraction:${subtraction(n1, n2)}");

    case 3:
      print("multiplication:${multiplication(n1, n2)}");

    case 4:
      print("division:${division(n1, n2)}");

    case 5:
      print("modular:${modular(n1, n2)}");

    default:
      print("enter the valid option!");
  }
}

addition(double a1, double a2) {
  double sum = a1 + a2;
  return sum;
}

subtraction(double a1, double a2) {
  double sub = a1 - a2;
  return sub;
}

multiplication(double a1, double a2) {
  double mul = a1 * a2;
  return mul;
}

division(double a1, double a2) {
  double div = a1 / a2;
  return div;
}

modular(double a1, double a2) {
  double mod = a1 % a2;
  return mod;
}