#include <stdio.h>
int main()
{
	int num1,num2,max;
	printf("enter the two numbers:\n");
	scanf("%d%d",&num1,&num2);
	max=(num1 > num2) ? num1 : num2;
	printf("%d",max);
	return 0;
}
