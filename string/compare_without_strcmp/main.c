#include<stdio.h>
int compare(char[], char []);
int main()
{
	char str1[10];
	char str2[10];
	printf("enter the string1");
	scanf("%s",str1);
	printf("enter the string2");
	scanf("%s",str2);
         int c=compare(str1,str2);
		if(c==0)
			printf("given number is equal");
		else
		printf("given number is not equal");	
}
int compare(char a[],char b[])
{
	int i=0,temp=0;
	while(a[i] !='\0' && b[i] !='\0')
{
if(a[i] !=b[i])
{
	temp=1;
	break;
}
i++;
}
if(temp == 0 && a[i] == '\0' && a[i] == '\0')
return 1;
else
return 0;
}

