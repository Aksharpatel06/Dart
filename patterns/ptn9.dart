import 'dart:io';

void main()
{
  for(int i=1;i<=5;i++)
  {
    for(int j=1;j<=5;j++)
    {
      int count = i*j;
      if(count<10)
      {
        stdout.write(' $count ');
      }else{
        stdout.write('$count ');
      }
    }
    print('');
  }
}