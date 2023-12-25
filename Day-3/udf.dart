import 'dart:io';

void main() {
  stdout.write('enter the length:');
  int l = int.parse(stdin.readLineSync()!);

  stdout.write('enter the wigth:');
  int w = int.parse(stdin.readLineSync()!);
  int a = area(l, w);
  print('area:$a');
}

area(int l, int w) {
  return l * w;
}
