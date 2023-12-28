import 'dart:io';

void main() {
  int n;

  stdout.write("enter the number:");
  n = int.parse(stdin.readLineSync()!);

  if (n % 2 == 0) {
    print("$n is even");
  } else {
    print("$n is odd");
  }
}
