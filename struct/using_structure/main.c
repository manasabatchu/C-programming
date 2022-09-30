#include<stdio.h>
#include<string.h>
struct employee{
	int id;
	char name[2];
	float salary;
	char Gender;
}emp1;
int main()
{
	emp1.id=1;//employee ID
	strcpy(emp1.name,"Ravi");//employee name
	emp1.salary=25234.5;//employee salary
	emp1.Gender='M';//employe Gender
	printf("Empidis:%d\n",emp1.id);
	printf("EmpNameis:%s\n",emp1.name);
	printf("Empsalaryis:%f\n",emp1.salary);
	printf("Genderis:%c\n",emp1.Gender);
	return 0;
}

