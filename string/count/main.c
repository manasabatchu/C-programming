#include<stdio.h>
#include<string.h>
int main()
{
	char str[100];
	int i;
	int vowels=0,consonants=0,digit=0,characters=0;
	printf("enter the string");
	scanf("%s",str);
		for(i=0;str[i] !=0;i++)
		{
			if(str[i] =='A'|| str[i]== 'E' || str[i]=='I' || str[i]=='O' || str[i]=='U' ||str[i]=='a'||str[i]=='e' || str[i]=='i'||str[i]=='o'||str[i]=='u')//check vowels
                      
			   {
				   vowels++;
                                }
			else  if ((str[i]>='a'&&str[i]<='z')||(str[i]>='A'&&str[i]<='Z'))
			{
				consonants++;
			}
				   else if(str[i]>='0'&& str[i]<='9')
				   {
                                    digit++;
                                   }
			
			else
			characters++;
		}
		
		
			printf("vowels=%d\n",vowels);
			printf("consonants=%d\n",consonants);
			printf("charactes=%d\n",characters);
			printf("digit=%d\n",digit);
			return 0;
			}
					


