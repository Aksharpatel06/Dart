import 'dart:io';

class Feet {
  late int feet;
  late int inch;

  setter() {
    stdout.write("enter the feet:");
    feet = int.parse(stdin.readLineSync()!);

    stdout.write("enter the inch:");
    inch = int.parse(stdin.readLineSync()!);
  }

  getter() {
     if (inch >= 12) {
      feet += inch ~/ 12;
      inch %= 12;
    }
    print("feet:$feet,inch:$inch");
  }
}

void main() {
  Feet f1 = Feet();
  f1
    ..setter()
    ..getter();
}
