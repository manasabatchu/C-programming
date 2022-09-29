#include<stdio.h>
int main()
{
int i,j;
int arr[2][2]={1,9,8,7};
for(i=0;i<2;i++)
{
for(j=0;j<2;j++)
{
printf("Address of 2D array elements %d %p\n",arr[i][j],&arr[i][j]);
}
}
return 0;
}
