import 'dart:io';

void main()
{
  for(int i=5;i>=1;i--)
  {
    for(int j=1,k=i;j<=5;j++)
    {
      if(k<10)
      {
        stdout.write(' $k ');
      }else{
        stdout.write('$k ');
      }
      k+=5;
    }
    print('');
  }
}