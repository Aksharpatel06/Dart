import 'dart:io';

void main()
{
  for(int i=65;i<70;i++)
  {
    for(int j=1;j<=5;j++)
    {
        stdout.write('${String.fromCharCode(i)} ');
    }
    print('');
  }
}