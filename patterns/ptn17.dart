import 'dart:io';

void main()
{
  for(int i=1;i<=9;i+=2)
  {
    for(int j=i;j<=9+i;j+=2)
    {
      stdout.write('${j} ');
    }
    print('');
  }
}