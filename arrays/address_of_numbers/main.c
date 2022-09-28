 #include<stdio.h>
int main()
{
int arr[]={21,33,54,87,90};
int i;
for(i=0;i<5;i++)
{
printf("Address of the array elements %d %p\n",arr[i],&arr[i]);
}
return 0;
}
