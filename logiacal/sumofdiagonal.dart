void main() {
  List l1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  var sum = 0, temp=0;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (i == j) {
        sum = l1[i][j];
        temp += sum;
      }
    }
  }
  print("sum of diagonal:$temp");
}
