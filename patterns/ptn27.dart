import 'dart:io';

void main()
{
  for(int i=1;i<=5;i++)
  {
    for(int j=65;j<70;j++)
    {
        stdout.write('${String.fromCharCode(j)} ');
    }
    print('');
  }
}