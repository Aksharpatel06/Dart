import 'dart:io';

main() {
  var str;

  stdout.write("Enter string : ");
  str = stdin.readLineSync()!;

  var length = str.length;

  var list = [];

  for (int i = 0; i < length; i++) {
    list.add(str[i]);
  }

  for (int i = 0; i < length; i++) {
    for (int j = i + 1; j < length; j++) {
      if (list[j] == list[i]) {
        list.removeAt(j);
        length--;
        j--;
      }
    }
  }

  str = list.join();

  print("\nString after removing duplicates : $str\n");
}
