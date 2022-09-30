#include<stdio.h>
#include<string.h>
struct employee{
	int id;
	char name[20];
	float salary;
};
struct employee emp[20];

int main()
{
     
	struct employee emp[20];
	int i;
	for(i=0;i<2;i++)
	{
		printf("Record%d",i+1);
		printf("\nenterempolyeeid:");
		scanf("%d",&emp[i].id);
		printf("\nenterempolyeename:");
		scanf("%s",emp[i].name);
		printf("\nenteremployeesalary:");
		scanf("%f",&emp[i].salary);
	}
	for(i=0;i<2;i++)
	{
		printf("\nempidis:%d\n",emp[i].id);
		printf("empnameis:%s\n",emp[i].name);
		printf("empsalary:%f\n",emp[i].salary);
	}
	return 0;
}
