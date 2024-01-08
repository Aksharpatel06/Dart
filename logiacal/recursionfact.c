#include<stdio.h>
#include<conio.h>
int fact (int n) {
  if (n == 1) {
    return 1;
  } else {
    return n* fact(n - 1);
  }
}

int  main() {
  int n;
  printf("enter the last number:");
  scanf("%d",&n);
  printf("1 to %d no factorial: %d",n,fact(n));
  return 0;
}
