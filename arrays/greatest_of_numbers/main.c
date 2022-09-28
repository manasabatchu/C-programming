#include<stdio.h>
int main()
{
int arr[]={21,999,998,1000,10101};
int temp=0;
int i;
for(i=0;i<5;i++)
{
if(temp<=arr[i])
temp=arr[i];
}
printf("Greatest of the numbers is %d\n",temp);
}
