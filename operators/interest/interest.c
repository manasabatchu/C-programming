#include <stdio.h>
int main()
{
	int n;
	float p,r,i,t;
	printf("enter the value:\n");
	scanf("%f%f%f%f",&p,&r,&i,&t);
	i=p*r*t/100;
	n=i/100;
	printf("value of interset %f",i);
	return 0;
}
