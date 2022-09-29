#include<stdio.h>
int main()
{
int n=10;
int *p;
p=&n;
printf("Address of p variable is:%x\n",p);
//addition
p=p+3; //adding 3 to pointer variable
printf("After adding address of p variable is:%x\n",p);
//subtraction
p=p-3; //subtract 3 to pointer variable
printf("After subtraction address of p variable is:%x\n",p);
return 0;
}
