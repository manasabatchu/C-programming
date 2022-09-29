#include<stdio.h>
int main()
{
int n=10;
int *p;
p=&n;
printf("Address of p variable is:%u\n",p);
p=p+1;//p value increment by one
printf("After increment address of p variable is :%u\n",p);
return 0;
}
