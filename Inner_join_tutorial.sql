select *
From parks_and_recreation.employee_demographics;

Select *
From parks_and_recreation.employee_salary;

Select*
From parks_and_recreation.employee_demographics as Dem
Inner Join parks_and_recreation.employee_salary as Sal
   On Dem.employee_id = Sal.employee_id;


Select*
From parks_and_recreation.employee_salary as Sal 
Inner Join parks_and_recreation.employee_demographics as Dem

   On Sal.employee_id = Dem.employee_id;


Select Sal.employee_id, Sal.first_name,occupation,age,salary 
From parks_and_recreation.employee_salary as Sal 
Inner Join parks_and_recreation.employee_demographics as Dem

   On Sal.employee_id = Dem.employee_id;
