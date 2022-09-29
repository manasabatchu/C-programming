#include<stdio.h>
int main()
{
int i,j,k,sum=0;
int a[2][2][2]={1,2,3,4,5,6};
int b[2][2][2]={6,5,4,3,2,1};
for(i=0;i<=1;i++)
{
for(j=0;j<=1;j++)
{
for(k=0;k<=1;k++)
{
sum=a[i][j][k]+b[i][j][k];
printf("Sum of 3D elemets %d\n", sum);
}
}
}
return 0;
}
