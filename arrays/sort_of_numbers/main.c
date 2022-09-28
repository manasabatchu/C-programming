/*#include<stdio.h>
int main()
{
int arr[4]={21,43,76,89};
int i,temp=0;
for(i=0;i<=3;i++)
{
if(temp >= arr[i])
temp=arr[i];
}
printf("Sort of numbers %d\n",temp);
}
#include<stdio.h>
int main()
{
        int arr[6]={54,23,5,12,67,89};
        int i;
        int temp;
        for(i=0;i<=5;i++)
        {
        if(arr[i]<=temp)
                arr[i]=temp;
        }
        printf("sort element %d\n",temp);
                return 0;

}
*/
#include<stdio.h>

int main() {
   int a[30], i, num, smallest;

   printf("\nEnter no of elements :");
   scanf("%d", &num);

   //Read n elements in an array
      for (i = 0; i < num; i++)
            scanf("%d", &a[i]);
   
               //Consider first element as smallest
                  smallest = a[0];
   
                     for (i = 0; i < num; i++) {
                           if (a[i] < smallest) {
                                    smallest = a[i];
                                          }
                                             }
   
                                                // Print out the Result
                                                   printf("\nSmallest Element : %d", smallest);
   
                                                      return (0);
   }
