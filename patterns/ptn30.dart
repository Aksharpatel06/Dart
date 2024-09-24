import 'dart:io';

void main()
{
  int fontNumber = 65;
  for(int i=1;i<=5;i++)
  {
    for(int j=1;j<=5;j++)
    {
        stdout.write('${String.fromCharCode(fontNumber)} ');
        fontNumber++;
    }
    print('');
  }
}