import 'dart:io';

class User {
  late String name;
  late DateTime birthdate;

  User(this.name, this.birthdate);
}

bool isLeapyear(int year) {
  return ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0));
}

bool isDate(int day, int month, int year) {
  if (year < 1924 || year > 2024) return false;

  if (month < 1 || month > 12) return false;

  List<int> daysInMonth = [
    31,
    isLeapyear(year) ? 29 : 28,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
  ];

  if (day < 1 || day > daysInMonth[month - 1]) return false;

  return true;
}

void main() {
  String name;
  int day, month, year;

  // Input name
  stdout.write('Enter your name: ');
  name = stdin.readLineSync()!;

  // Input birthdate
    while (true) {
    stdout.write('Enter your birthdate (dd/mm/yyyy): ');
    List<String> dateParts = stdin.readLineSync()!.split('/');
    
    if (dateParts.length != 3) {
      print('Invalid input. Please enter the date in dd/mm/yyyy format.');
      continue;
    }

    day = int.tryParse(dateParts[0]) ?? 0;
    month = int.tryParse(dateParts[1]) ?? 0;
    year = int.tryParse(dateParts[2]) ?? 0;

    if (!isDate(day, month, year)) {
      print('Invalid date. Please follow the instructions.');
      continue;
    }

    break;
  }

  User user = User(name, DateTime(year, month, day));

  // Calculate age
  DateTime currentDate = DateTime.now();
  int age = currentDate.year -
      user.birthdate.year -
      (currentDate.isBefore(DateTime(
              currentDate.year, user.birthdate.month, user.birthdate.day))? 1: 0);

  // Print user details
  print('\nUser Details:');
  print('Name: ${user.name}');
  print(
      'Birthdate: ${user.birthdate.day}/${user.birthdate.month}/${user.birthdate.year}');
  print('Age: $age years');
}