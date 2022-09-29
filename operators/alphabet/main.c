#include<stdio.h>
int main()
{
	char ch;
	printf("enter any charcter");
	scanf("%c",&ch);
	if ((ch >=97 && ch <=122)||(ch >=65 && ch<=90))
	{
		printf("'%c'is alphabe=%d is ascii value.",ch,ch);
	}
	else if	((ch >=48 && ch <=57))
	{
		printf("'%c' is numeric=%d is ascii value.",ch,ch);
	}
	else
	printf ("'%c'is special symbols=%d is ascii value.",ch,ch);
}	
