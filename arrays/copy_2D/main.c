#include<stdio.h>
int main()
{
int i,j;
int a[2][2]={1,9,7,5};
int b[2][2];
for(i=0;i<=1;i++)
{
for(j=0;j<=1;j++)
{
b[i][j]=a[i][j];
printf("%d\n",b[i][j]);
}
}
return 0;
}
