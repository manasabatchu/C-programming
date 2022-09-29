#include<stdio.h>
int main()
{
        int n,sum=0,r,tmp;
        printf("enter the value");
        scanf("%d",&n);
        tmp=n;	
        while(n>0)
        {
            r=n%10;
                sum=sum*10+r;
                n=n/10;
        }
                
       n=tmp;
        if(n==sum)
        {
        printf("given palindrome number is  number:%d",sum);
        }
        else
               printf("give number is not palindrome number:%d",sum);
return 0;
}
