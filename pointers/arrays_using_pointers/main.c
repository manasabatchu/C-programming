#include<stdio.h>
#include<string.h>
void main(){
 //Declaring string and pointers, for loop variable//
 int i;
 char *a[5]={"One","Two","Three","Four","Five"};
 //Printing values within each string location using for loop//
 printf("The values in every string location are : \n");
 for(i=0;i<5;i++){
 printf("%s\n",a[i]);
 }
 //Printing addresses within each string location using for loop//
 printf("The address locations of every string values are : \n");
 for(i=0;i<5;i++){
 printf("%d\n",a[i]);
 }
 }
