import 'dart:io';

void main() {
  double p, t, r;

  stdout.write("enter the principal:");
  p = double.parse(stdin.readLineSync()!);

  stdout.write("enter the time:");
  t = double.parse(stdin.readLineSync()!);

  stdout.write("enter the rate:");
  r = double.parse(stdin.readLineSync()!);

  print("simple interest :${(p * t * r) / 100}");
}
