#include<stdio.h>
#include<ctype.h>
int main()
{
	int i=0;
	char c;
	char srt[]="DILIP";
	while(srt[i] !='\0')
	{
		putchar(tolower(srt[i]));//convert into lower case
			i++;
	}
	printf("\n");
		return 0;
}
