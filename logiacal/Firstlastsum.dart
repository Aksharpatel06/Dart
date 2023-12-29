import 'dart:io';

void main() {
  stdout.write("enter the number:");
  var n = int.parse(stdin.readLineSync()!);
  int last = n % 10;
  while (n >= 10) {
    n = n ~/ 10;
  }
  int first = n;
  print("number of digits:${first + last}");
}
