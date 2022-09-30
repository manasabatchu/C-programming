#include <stdio.h>

struct student
{
int r_no;
char name[20];
char s;
float score;
};
void main()
{
struct student p[20];
int i,h=0,l=0;
for(i=0;i<5;i++)
{
printf("enter %d person roll number,name,Gender,score",i+1);
scanf("%d%s %c%f",&p[i].r_no,&p[i].name,&p[i].s,&p[i].score);
}
for(i=0;i<5;i++)
{
printf("%d student details : ",i+1);
printf("roll number=%d\t name=%s\t Gender=%c\t score=%f\n",p[i].r_no,p[i].name,p[i].s,p[i].score);
if(p[h].score < p[i].score)
h = i;
if(p[l].score>p[i].score)
l=i;
}
printf("maximum score %f:",p[h].score);
printf("minimum score %f:",p[l].score);
}
