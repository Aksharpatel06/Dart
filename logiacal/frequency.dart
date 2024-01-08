import 'dart:io';

void main() {
  List a = [];
  int freq = 0, repet = 0, i;

  for (i = 0; i < 5; i++);
  {
    stdout.write("enter the value of a[$i]:");
    a.add(int.parse(stdin.readLineSync()!));
  }

  for (i = 0; i < 5; i++) {
    freq = 0;
    freq++;
    repet = 0;
    for (int j = 0; j < 5; j++) {
      if (i == j) {
        continue;
      } else if (a[i] == a[j]) {
        if (j < i) {
          repet = 1;
          freq++;
        }
      }
    }
    if (repet==0) {
      continue;
    } else {
      print("$freq");
    }
  }
}
