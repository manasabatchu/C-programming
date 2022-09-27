#include<stdio.h>
void febi_prime();
int main()
{
febi_prime();
printf("\n");
return 0;
}

void febi_prime(){
int a=0,b=1,i,num,temp,count=0,j,c=0;
int s_range=10,e_range=100;
while (c<=e_range){
        c=a+b;
        a=b;
        b=c;
        for(j=1;j<=c;j++)//prime chech
        {
                if(c%j==0)
                        count+=1;
        }
        if(count==2 && c>=s_range && c<=e_range)
                printf("febinosi prime number %d\n",c);
        count=0;
}

return ;
}
