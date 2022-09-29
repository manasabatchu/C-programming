#include <stdio.h>
int main()
{
	int num,sum=0,i,rem;
	printf("enter the value");
	scanf("%d",&num);
	for(i=1;i<num;i++)
	{
		rem=num%i;
		if(rem == 0)
		{
		sum=sum+i;
	}
	}
	if(sum==num)
		printf("given number is perfect number %d",num);
	else 
		printf("given number is not perfect number %d",num);
	return 0;
}
