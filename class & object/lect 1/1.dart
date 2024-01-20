import 'dart:io';

class Student {
  int? roll_num, age;
  String? name;
  setter() {
    stdout.write("\nenter the roll number:");
    roll_num = int.parse(stdin.readLineSync()!);
    stdout.write("enter the name:");
    name = stdin.readLineSync()!;
    stdout.write("enter the age:");
    age = int.parse(stdin.readLineSync()!);
  }

  getter() {
    print("\nRoll number:$roll_num");
    print("Name:$name");
    print("Age:$age\n");
  }
}

void main() {
  List l1 = [];
  stdout.write("enter the student:");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    Student s1 = Student();
    s1.setter();
    s1.getter();
    l1.add(s1);
  }
}
