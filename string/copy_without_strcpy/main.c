#include<stdio.h>

int main()
{
	char str1[]="hey hello",str2[100],i;
	printf("string1 :%s\n",str1);
	for(i=0;str1[i] !='\0';++i)
	{
		str2[i]=str1[i];
	}
	str2[i] ='\0';
	printf("copy the string2 %s",str2);
	return 0;
}
