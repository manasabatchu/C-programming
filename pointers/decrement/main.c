#include<stdio.h>
int main()
{
int n=10;
int *ptr;
ptr=&n;
printf("Address of ptr variable is:%u\n",ptr);
ptr=ptr-1;
printf("After decrement address of ptr variable is:%u\n",ptr);
return 0;
}
