#include<stdio.h>
int gcd(int a, int b);
int main()
{
	int a,b,gcd_num;
	printf("enter the two values");
	scanf("%d%d",&a,&b);
	gcd_num=gcd(a,b);
	printf("gcd of two numbers %d\n",gcd_num);
	return 0;
}
int gcd(int a, int b)
{
int i,temp;
for(i=1;i<=a && i<=b;i++)
{
	if(a%i ==0 && b%i==0)
	{
		temp=i;
	}
}
return temp;
}
