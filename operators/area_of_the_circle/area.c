#include <stdio.h>
int main()
{
	float a,p;
	float r;
	float pi=3.14;
	printf("enter the value of radius");
	scanf("%f",&r);
	a=pi*r*r;
	printf("area of the circle %f\n",a);
	p=2*pi*r;
	printf("parimeter of the circle %f\n",p);
	return 0;
}
