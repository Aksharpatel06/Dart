import 'dart:io';

void main() {
  stdout.write("enter the number:");
  int n = int.parse(stdin.readLineSync()!);

  int prime = 0;
  for (int i = 2; i <= n / i; i++) {
    if (n % i == 0) {
      prime = 1;
    }
  }
  if (prime == 0) {
    print("$n is a prime number");
  }
  else{
    print("$n is not a prime number");
  }
}