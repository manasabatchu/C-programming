#include <stdio.h>
int main()
{
	int a,b;
	int sum, sub,mul,mod;
	float div;
	printf("enter the two numbers:\n");
	scanf("%d%d",&a,&b);
	sum = a+b;
	printf("the sum of two numbers:%d\n",sum);
	sub = a-b;
	printf("the sub of two numbers:%d\n",sub);
	mul = a*b;
	printf("the mul of two numbers:%d\n",mul);
	mod = a%b;
	printf("the mod of two numbers:%d\n",mod);
	div = (float)a/b;
	printf("the div of two numbers:%f\n",div);
	printf("\n");
	return 0;
}
