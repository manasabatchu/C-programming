#include<stdio.h>
int main()
{
	int n,sum=0,r,c;
	printf("enter the value");
	scanf("%d",&n);
	while(n>0) //armstrong number condition
	{
		r=n%10;
		c=r*r*r;
		sum=sum+c;
		n=n/10;
	}
	if(n==sum)
	{
	printf("given number is armstrong number:%d",sum);
	}
	else
	       printf("give number is not armstrong number:%d",sum);
return 0;
}
