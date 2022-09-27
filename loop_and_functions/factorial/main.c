#include<stdio.h>
int main()
{
	int i,n,fact=1;
		printf("enter the value");
	scanf("%d",&n);
	for(i=1;i<=n;i++)//increment the given value and check the condition
	{
		fact=fact*i;
	}
	printf("\n factorial value is:%d",fact);
	return 0;
}
