import 'dart:io';

void main() {
  stdout.write("enter the number:");

  List l = [];

  for (int i = 0; i < 5; i++) {
    l.add(int.parse(stdin.readLineSync()!));
  }

  print("prime number:");
  int prime = 0;
  for (int a = 0; a < 5; a++) {
    for (int i = 2; i <= l[a] / i; i++) {
      if (l[a] % i == 0) {
        prime = 1;
      }
    }
    if (prime == 0) {
      print("${l[a]}");
    }
  }
}
