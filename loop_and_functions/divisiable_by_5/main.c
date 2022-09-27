#include<stdio.h>
int main()
{
	int i,num,sum=0;
	printf("enter the number");
	scanf("%d",&num);
	for(i=1;i<=num;i++)
	{
		if(i %5==0)// check divisable of 5
		{
		continue;
	
		}
		sum=sum+i;
	}
	printf("\n sum of number 1 to N is:%d",sum);

	return 0;
}
