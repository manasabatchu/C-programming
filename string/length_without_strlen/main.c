#include<stdio.h>
int main()
{
char s[]="manasa";
int i,length=0;
for(i=0;s[i]!='\0';i++)
{
length=length+1;
}
printf("Length of the string %d\n",length);
return 0;
}
