#include <stdio.h>
int main()
{
	int i,sum=0,lower,uper;
	printf("enter lower and uper");
	scanf("%d%d",&lower,&uper);
	for(i=lower;i<=uper;i++)
	{
		sum=sum+i;
	}
	printf("sum is %d",sum);
	return 0;

}
