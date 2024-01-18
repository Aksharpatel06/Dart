import 'dart:io';

class Railway {
  int? train_number;
  String? name, source, destination, time;
  setter() {
    stdout.write("\nenter the  Train Number:");
    train_number = int.parse(stdin.readLineSync()!);
    stdout.write("enter the  Train Name:");
    name = stdin.readLineSync()!;
    stdout.write("enter the  Source :");
    source = stdin.readLineSync()!;
    stdout.write("enter the  Destination:");
    destination = stdin.readLineSync()!;
    stdout.write("enter the Time:");
    time = stdin.readLineSync()!;
  }

  getter() {
    print("\nTrain number:$train_number");
    print("Train name:$name");
    print("Source:$source");
    print("Destination:$destination");
    print("Time:$time\n");
  }
}

void main() {
  List<Railway> l1 = [];
  for (int i = 0; i < 3; i++) {
    Railway r1 = Railway();
    r1.setter();
    r1.getter();
    l1.add(r1);
    if (i == 2) {
      stdout.write("enter the srearch train number:");
      int tn = int.parse(stdin.readLineSync()!);
      if (tn == l1[0].train_number) {
        l1[0].getter();
      } else if (l1[1].train_number == tn) {
        l1[1].getter();
      } else if (l1[2].train_number == tn) {
        l1[2].getter();
      } else {
        print("train number not correctx!");
      }
    }
  }
}
