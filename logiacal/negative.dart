import 'dart:io';

void main() {
  List a = [];
  int num;

  for (int i = 0; i < 10; i++) {
    stdout.write("enter the array[$i]:");
    num = int.parse(stdin.readLineSync()!);
    a.add(num);
  }

  for (int i = 0; i < 10; i++) {
    if (a[i] < 0) {
      stdout.write("${a[i]}");
    }
  }
}
