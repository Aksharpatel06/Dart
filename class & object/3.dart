import 'dart:io';

class Suparmarket {
  int? item_number, quantity, tax, discount;
  String? name;
  setter() {
    stdout.write("\nenter the item Number:");
    item_number = int.parse(stdin.readLineSync()!);
    stdout.write("enter the item Name:");
    name = stdin.readLineSync()!;
    stdout.write("enter the quantity:");
    quantity = int.parse(stdin.readLineSync()!);
    stdout.write("enter the tax:");
    tax = int.parse(stdin.readLineSync()!);
    stdout.write("enter the Discount:");
    discount = int.parse(stdin.readLineSync()!);
  }

  getter() {
    print("\nItem number:$item_number");
    print("Item name:$name");
    print("Quantity:$quantity");
    print("Tax:$tax");
    print("Discount:$discount\n");
  }
}

void main() {
  stdout.write("enter the id:");
  String id = stdin.readLineSync()!;
  stdout.write("enter the password:");
  String password = stdin.readLineSync()!;

  List<Suparmarket> l1 = [];

  if (password != 0 && id != 0) {
    for (int i = 0; i < 3; i++) {
      Suparmarket s1 = Suparmarket();
      s1.setter();
      s1.getter();
      l1.add(s1);
      if (i == 2) {
        l1.sort((a, b) => a.item_number!.compareTo(b.item_number as num));
      }
    }
    for (int i = 0; i < 3; i++) {
      l1[i].getter();
    }
  }
}
