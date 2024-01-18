void main() {
  double x = fun(80, 85, 90);
  print("percentage:$x");
  x > 50 ? print("suceessful job") : print("unsuccessful job");
}

fun([double sub1 = 0, double sub2 = 0, double sub3 = 0]) {
  double totalmarks = sub1 + sub2 + sub3;
  double percentage = totalmarks / 3;
  return percentage;
}
