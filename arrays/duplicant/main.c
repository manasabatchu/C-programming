#include<stdio.h>
int main()
{
int i,j;
int arr[]={1,3,6,8,7,3,2,1};
int length=sizeof(arr)/sizeof(arr[0]);
for(i=0;i<=length;i++)
{
for(j=i+1;j<=length;j++)
{
if (arr[i]==arr[j])
{
printf("%d\n",arr[j]);
}
}
}
return 0;
}
