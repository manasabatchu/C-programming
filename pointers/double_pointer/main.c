#include<stdio.h>
int main()
{
int n=100;
int *p;
p=&n;
int **pp;
pp=&p;
printf("Address of n %x\n",p);
printf("Address of p %x\n",pp);
printf("Value of p %d\n",*p);
printf("Value of pp %d\n",**pp);
return 0;
}
