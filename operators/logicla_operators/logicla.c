#include<stdio.h>
int main()
{
	
	int i=8,j=5;
	int a,b,e,f,g;
	float x=0.005,y=0.01;
	char c='c',d='d';
	a=((3*i*j)%(2*d));
	b=((i*j)%(c+2*d)/(x*y));
	e=(5*(i+j)>'c');
	f=(2*x+(y==0));
	g=((x>y)&&(i>0)||(j<5));
	printf("%d\n%d\n%d\n%d\n%d",a,b,d,e,g);
	return 0;
}
