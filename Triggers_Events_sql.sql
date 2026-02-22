Delimiter $$
Create Trigger employee_insert
After insert on employee_salary 
For each row 
Begin 
Insert into employee_demographics (employee_id,first_name,last_name)
Values (new.employee_id,new.first_name,new.last_name);
End $$
Delimiter ;

Insert into employee_salary (employee_id,first_name,last_name,occupation,salary,dept_id)
Values (17,'Yee','Oo','CEO',180000,null);

select*
From employee_salary ;

select * 
From employee_demographics;

Delimiter $$
Create Event Delete_Retirees 
On Schedule every 30 second
Do
Begin
Delete
From employee_demographics 
Where age >= 60;
End $$
Delimiter ;

Show Variables like 'event%';
