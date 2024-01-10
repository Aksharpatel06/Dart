import 'dart:io';

void main() {
  Map employee = {};
  for (int i = 0; i < 3; i++) {
    print("\n");
    stdout.write("enter the employee id:");
    int id = int.parse(stdin.readLineSync()!);
    stdout.write("enter the employee name:");
    String? name = stdin.readLineSync()!;
    stdout.write("enter the employee age:");
    int age = int.parse(stdin.readLineSync()!);
    stdout.write("enter the employee salary:");
    int salary = int.parse(stdin.readLineSync()!);

    employee[name] = {"id": id, "name": name, "age": age, "salary": salary};
    print("");
    for (String key in employee.keys) {
      print("Employee id: ${employee[key]['id']}");
      print("Employee name: ${employee[key]['name']}");
      print("Employee age: ${employee[key]['age']}");
      print("Employee salary: ${employee[key]['salary']}");
    }
  }
}
