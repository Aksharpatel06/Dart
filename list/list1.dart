import 'dart:io';

void main() {
  List l1 = [];

  stdout.write("enter the elements:");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    l1.add(stdin.readLineSync());
  }
  for (int i = 0; i < n; i++) {
    print(l1[i]+ " hello");
  }
}
