import 'dart:io';

void main() {
  for (int i = 5; i >= 1; i--) {
    for (int j = 1, l = 5 - i + 1, k = i; j <= 5; j++) {
      if (j % 2 == 0) {
        if (l < 10) {
          stdout.write(' $l ');
        } else {
          stdout.write('$l ');
        }
      } else {
        if (k < 10) {
          stdout.write(' $k ');
        } else {
          stdout.write('$k ');
        }
      }
      k += 5;
      l += 5;
    }
    print('');
  }
}
