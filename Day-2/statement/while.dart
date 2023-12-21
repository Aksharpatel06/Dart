void main() {
  int count = 1;

  while (count <= 10) {
    print("$count");
    count++;

    if (count == 4) {
      break;
    }
  }
  count = 1;
  while (count <= 10) {
    print("$count");
    count++;

    if (count == 4) {
      continue;
    }
  }
}
