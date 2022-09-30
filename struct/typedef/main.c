#include<stdio.h>
typedef struct
{
	int r,i;
}complex;
int main()
{
	complex a,b;//assining the complex numbers
	printf("Enter first two complex numbers(saperate real part and imaginary part with 'Space'):");
	scanf("%d%d",&a.r,&a.i);
	printf("Enter second two complex numbers(saperate real part and imaginary part with 'Space'):");
        scanf("%d%d",&b.r,&b.i);
	printf("\nAddition is=%d+%di\n Subtraction is =%d",a.r+b.r,a.i+b.i,a.r-b.r);
		if(a.i-b.i>0)
			printf("+%di\n",a.i-b.i);
		else
			printf("%di\n",a.i-b.i);
	return 0;
}

