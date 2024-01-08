import 'dart:io';

void main() {
  var fact=0;

  stdout.write("enter the number:");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = n; i >= 1; i--) {
    stdout.write("$i + ");
    fact += i;
    if (i == 1) {
      stdout.write("0 = $fact");
    }
  }
}
