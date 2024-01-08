import 'dart:io';

void main() {
  List n1 = [1, 5, 3, 8, 3, 6, 3, 8];
  int a, b;
  print(n1);
  print("1.insert");
  print("2.update");
  print("3.delete");

  stdout.write("enter the choice:");
  int n = int.parse(stdin.readLineSync()!);

  switch (n) {
    case 1:
      n1.add(int.parse(stdin.readLineSync()!));
      print(n1);
      break;

    case 2:
      stdout.write("enter the index number:");
      a = int.parse(stdin.readLineSync()!);
      stdout.write("enter the add the number:");
      b = int.parse(stdin.readLineSync()!);
      n1[a] = b;
      print(n1);

    case 3:
      stdout.write("enter the index number:");
      a = int.parse(stdin.readLineSync()!);
      n1.remove(a);
      print(n1);
      break;

    default:
      stdout.write("correct option!");
      break;
  }
}
