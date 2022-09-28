#include<stdio.h>
#include<string.h>
int main()
{
char main[]="manasa dilip";
char sub[]="dilip";
char ret_val;
ret_val=strstr(main,sub);
if(ret_val!=NULL)
printf("The substring %s\n present in the mainstring %s\n",sub,main);
else
printf("The substring %s\n not present in the mainstring %s\n",sub,main);
return 0;
}
