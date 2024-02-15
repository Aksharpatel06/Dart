int sumOfList({List<int>? numbers}) {
  int sum = 0;
  for (int number in numbers!) {
    sum += number;
  }
  return sum;
}

void main() {
  List<int> myList = [1, 2, 3, 4, 5];
  int result = sumOfList(numbers: myList);
  print("The sum of the list is: $result");
}
