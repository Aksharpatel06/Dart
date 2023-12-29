import 'dart:io';

void main() {
  List l1 = [];
  print("enter the states:");
  for (int i = 0; i < 28; i++) {
    l1.add(stdin.readLineSync());
  }
  
  for (int i = 0; i < 28; i++) {
    print(l1[i]);
  }
}
