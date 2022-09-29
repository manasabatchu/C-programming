#include<stdio.h>
int main()
{
int a=200,b=100;
int *p=&a,*q=&b;
printf("Before swapping: *p=%d *q=%d\n",*p,*q);
*p=*p+*q;
*q=*p-*q;
*p=*p-*q;
printf("After swapping: *p=%d *q=%d",*p,*q);
return 0;
}
