#include<stdio.h>
int main()
{
	char str[100];
	int i,j;
	printf("enter the strings:");
	scanf("%s",str);
	for(i=0;str[i] !='\0';i++)
	{
		
		if((str[i] >= 'a' && str[i] <='z') ||(str[i] >='A' && str[i]<='Z'))
		{
			printf("%c",str[i]);
	}
	}
	return 0;
}
