#include<stdio.h>
int main()
{
char s1[]="hello";
char s2[]="world";
int i,j;
for(i=0;s1[i]!='\0';i++)
{
for(j=0;s2[j]!='\0';j++,i++);
{
s1[i]=s2[j];
}
}
printf("Concatenation of two strings %s%s\n",s1,s2);
return 0;
}
