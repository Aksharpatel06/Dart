import 'dart:io';

main() {
  int i, j, a, n;
  stdout.write("Enter the value of array size:");
  n = int.parse(stdin.readLineSync()!);
  List number = [n];
  print("Enter the numbers \n");
  for (i = 0; i < n; i++) {
    number.add(int.parse(stdin.readLineSync()!));
  }
  for (i = 0; i < n; i++) {
    for (j = i + 1; j < n; j++) {
      if (number[i] <  number[j]) {
        a = number[i];
        number[i] = number[j];
        number[j] = a;
      }
    }
  }
  print("The numbers arranged in ascending order are given below \n");
  for (i = 0; i < n; i++) {
    stdout.write("${number[i]} ");
  }
}