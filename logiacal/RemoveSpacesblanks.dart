import 'dart:io';

void main() {
  var str;

  stdout.write("Enter string : ");
  str = stdin.readLineSync()!;

  print("\nString after removing space : ${str.replaceAll(' ', '')}\n");
}