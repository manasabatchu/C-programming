#include<stdio.h>
int main()
{
int i,j,k;
int arr[2][2][2]={2,3,5,4,7,6};
for(i=0;i<=1;i++)
{
for(j=0;j<=1;j++)
{
for(k=0;k<=1;k++)
{
printf("Address of 3D elements %d %p\n",arr[i][j][k],&arr[i][j][k]);
}
}
}
return 0;
}
