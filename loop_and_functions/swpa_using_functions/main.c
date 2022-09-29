#include<stdio.h>
void swap(int x,int y);
int main()
{
	int a=100,b=200;
	printf("befor swap the value of a %d\n",a);
	printf("befor swap the value of b %d\n",b);
	swap(a,b);
	return 0;
}
void swap(int x,int y){
	int temp;
		temp=x;
		x=y;
		y=temp;
		printf("\n after swap the value of a %d\n",x);
                printf("\n after swap the value of b %d\n",y);

		
		return ;
}
