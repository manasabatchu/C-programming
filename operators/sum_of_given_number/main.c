#include <stdio.h>
int main()
{
        int n=1234,sum=0,m;
        while(n>0)
        {
                m=n%10;
                sum=sum+m;
                n=n/10;
        }
        printf("sum of n=%d",sum);
        return 0;
}
