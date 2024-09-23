import 'dart:io';

void main()
{
  for(int i=1;i<=5;i++)
  {
    for(int j=1;j<=3;j++)
    {
      stdout.write(' $j $i');
    }
    print('');
  }
}