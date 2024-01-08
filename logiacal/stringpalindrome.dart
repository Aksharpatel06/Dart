import 'dart:io';

void main() {
  var str;

  stdout.write("Enter string : ");
  str = stdin.readLineSync()!;

  var revStr = str.split('').reversed.join();

  print("Reversed string : $revStr");

  if (str == revStr)
    print("\nGiven String($str) is palindrome.\n");
  else
    print("\nGiven String($str) is not palindrome.\n");
}