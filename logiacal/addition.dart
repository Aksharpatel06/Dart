import 'dart:io';

void main() {
  List l1 = [
    [1, 2],
    [3, 4],
    [5, 6]
  ];

  List l2 = [
    [10, 20],
    [30, 40],
    [50, 60]
  ];

  List sum = [
    [0, 0],
    [0, 0],
    [0, 0]
  ];

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 2; j++) {
      stdout.write("${l1[i][j]}\t");
    }

    if (i == 1) stdout.write("  +  ");

    for (int j = 0; j < 2; j++) {
      stdout.write("\t${l2[i][j]}\t");
    }

    if (i == 1) stdout.write("  =  ");

    for (int j = 0; j < 2; j++) {
      sum[i][j] = l1[i][j] + l2[i][j];
      stdout.write("\t${sum[i][j]}\t");
    }

    print("");
  }
}
