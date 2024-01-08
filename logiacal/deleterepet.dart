import 'dart:io';

void main() {
  List a = [];
  int i, len = 5;

  for (i = 0; i < 5; i++);
  {
    stdout.write("enter the value of a[$i]:");
    a.add(int.parse(stdin.readLineSync()!));
  }

  for (i = 0; i < len; i++) {
    for (int j = i + 1; j < len; j++) {
      if (a[i] == a[j]) {
        a.removeAt(j);
        j--;
        len--;
      }
    }
  }
  stdout.write("new array:$a");
}
