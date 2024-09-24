import 'dart:io';

void main()
{
  for(int i=1;i<=5;i++)
  {
    for(int j=69;j>=65;j--)
    {
        stdout.write('${String.fromCharCode(j)} ');
    }
    print('');
  }
}