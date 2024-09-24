import 'dart:io';

void main() {
  int a=9,b=1;
  for (int i = 1; i <= 5; i++) {
    for (int j = 1,k=i; j <= 5; j++) {
      stdout.write("$k ");
      if(j%2==1)
      {
        k+=a;
      }else{
        k+=b;
      }
    }
    print('');
    a-=2;
    b+=2;
  }
}
