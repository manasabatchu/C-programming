#include <stdio.h>
int main()
{
	int num1=3;
	int num2=9;
	char op;
	printf("enter the operators + or - or * or/ \n");
	scanf("%c",&op);
	switch(op)
	{
		case '+':	
			printf(" %d + %d = %d ",num1,num2,num1+num2);
			break;

		case '-':
                        printf(" %d - %d = %d ",num1,num2,num1-num2);
                        break;
		case '*':
                        printf(" %d * %d = %d ",num1,num2,num1*num2);
                        break;
                case '/':
                        printf(" %d / %d = %d ",num1,num2,num1/num2);
                        break;

}
return 0;
}
