/*#include<stdio.h>
#include<ctype.h>
int main()
{
int i;
char s1[]="embedded";
printf("s1=%s\n",s1);
for(i=0;s1[i]!='\0';i++)
{
printf("convert to upper case toupper(s1[i]) %s\n",toupper(s1[i]));
}
return 0;
}*/
#include<stdio.h>
#include<ctype.h>
int main()
{
	int i=0;
	char c;
	char srt[]="embedded";
	while(srt[i] !='\0')
	{
		putchar(toupper(srt[i]));//convert into upper case
			i++;
	}
	printf("\n");
		return 0;
}
