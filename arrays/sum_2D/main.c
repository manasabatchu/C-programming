#include<stdio.h>
int main()
{
int a[2][2]={1,7,9,8};
int b[2][2]={2,4,3,5};
int i,j,sum=0;
for(i=0;i<=1;i++)
{
for(j=0;j<=1;j++)
{
sum=a[i][j]+b[i][j];
printf("Sum of elemnets %d\n",sum);
}
}
return 0;
}
