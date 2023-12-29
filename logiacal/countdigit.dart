import 'dart:io';

void main() {
  stdout.write("enter the number:");
  var n = int.parse(stdin.readLineSync()!);
  int i = 0;
  while (n != 0) {
    n = n ~/ 10;
    i++;
  }
  print("number of digits:$i");
}
