#include<stdio.h>
int main()
{
int i;
int arr[]={21,78,43,90,77};
for(i=0;i<=4;i++)
{
printf("Original elements in the array %d\n",arr[i]);
}
printf("Rverse the elements in the array");
for(i=4;i>=0;i--)
{
printf("%d\n",arr[i]);
}
return 0;
}
