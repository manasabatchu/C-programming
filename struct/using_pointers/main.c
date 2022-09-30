#include<stdio.h>
struct employee{
	char name[100];
	int id;
	float salary;
};
struct employee emp1[50];
int main()
{
	struct employee emp1,*ptr;
	printf("Enter name, id,salary of employee\n");
	scanf("%s %d %f",&emp1.name,&emp1.id,&emp1.salary);
	/*Printing structure members using arrow operator*/
	ptr=&emp1;
	printf("\nEmployee Detailes\n");
	printf("Name:%s\n id:%d\n salary:%f\n",ptr->name,ptr->id,ptr->salary);
	return 0;
}
