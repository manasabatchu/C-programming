#include <stdio.h>
int main() {
  int m[10][10], transpose[10][10], r, c;
  int i,j;
  printf("Enter rows and columns: ");
  scanf("%d %d", &r, &c);

  // asssigning elements to the matrix
     printf("\nEnter matrix elements:\n");
       for ( i = 0; i < r; ++i)
         for ( j = 0; j < c; ++j) {
             printf("Enter element m%d%d: ", i + 1, j + 1);
                 scanf("%d", &m[i][j]);
                   }
  
                     // printing the matrix a[][]
                       printf("\nEntered matrix: \n");
                         for ( i = 0; i < r; ++i)
                           for (j = 0; j < c; ++j) {
                               printf("%d  ", m[i][j]);
                                   if (j == c - 1)
                                       printf("\n");
                                         }
  
                                           // computing the transpose
                                             for ( i = 0; i < r; ++i)
                                               for (j = 0; j < c; ++j) {
                                                   transpose[j][i] = m[i][j];
                                                     }
  
                                                       // printing the transpose
                                                         printf("\nTranspose of the matrix:\n");
                                                           for ( i = 0; i < c; ++i)
                                                             for ( j = 0; j < r; ++j) {
                                                                 printf("%d  ", transpose[i][j]);
                                                                     if (j == r - 1)
                                                                         printf("\n");
                                                                           }
                                                                             return 0;
                                                                             }
