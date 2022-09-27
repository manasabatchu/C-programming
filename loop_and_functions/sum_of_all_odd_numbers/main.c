#include<stdio.h>
int main()
{
	int count=1,n,sum=0;
		printf("enter the value");
		scanf("%d",&n);
		
		while(count <= n)
		{
			if(count%2 !=0)//check the odd numbers
			{
			sum=sum+count;
			
		}
		count++;
		}
		printf("\n sum all odd numbers is:%d",sum);
		return 0;
}
