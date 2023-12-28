import 'dart:io';

void main() {
  stdout.write("enter the first name:");
  String firstname = stdin.readLineSync()!;

  stdout.write("enter the last name:");
  String lastname = stdin.readLineSync()!;

  print("full name: $firstname $lastname");
}
