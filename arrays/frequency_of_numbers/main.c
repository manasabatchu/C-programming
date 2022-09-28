#include<stdio.h>

int main()
{
int n,a[100],length;
printf("enter n value");
scanf("%d",&n);

//initialize array
//
printf("enter the %d elements into array",n);
for(int i=0;i<n;i++)
scanf("%d",&a[i]);
//calculate the length of the array
//
length=sizeof(a)/sizeof(a[0]);
//
//store frequencies od element
//
int f[length],k;
for(int i=0;i<length;i++)
{
int count=1;
for(int j=i+1;j<length;j++)
{
if(a[i]==a[j])
{
count++;
f[j]=k;
}
}
if(f[i]!=k)
f[i]=count;
}
printf("element and Frequency\n");
for(int i=0;i<length;i++)
{
if(f[i]!=k)
{
printf("%d ",a[i]);
printf("and");
printf("%d\n",f[i]);
}
}
return 0;
}
