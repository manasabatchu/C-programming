#include<stdio.h>
int main()
{
int n=10;//integer pointer
int *p=&n;
printf("Value of p %d\n",*p);
printf("Address of p %x\n",p);
char ch='a';//charcter pointer
char *pp=&ch;
printf("Value of pp %d\n",*pp);
printf("Address of pp %x\n",pp);
return 0;
} 
