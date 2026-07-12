Select*
From parks_and_recreation.employee_demographics as Dem
Left Join parks_and_recreation.employee_salary as Sal
   On Dem.employee_id = Sal.employee_id;
Select*
From parks_and_recreation.employee_demographics as Dem
Right Join parks_and_recreation.employee_salary as Sal
   On Dem.employee_id = Sal.employee_id;
   
   Select *
From parks_and_recreation.employee_salary as Sal1
Join  parks_and_recreation.employee_salary as Sal2
 On Sal1.employee_id+1=Sal2.employee_id;
 
 Select *
 From parks_and_recreation.parks_departments;
 
  Select *
From parks_and_recreation.employee_salary as Sal1
Join  parks_and_recreation.employee_salary as Sal2
 On Sal1.employee_id+1=Sal2.employee_id;
 
 Select *
From parks_and_recreation.employee_demographics as Dem
Inner Join parks_and_recreation.employee_salary as Sal
   On Dem.employee_id = Sal.employee_id
Inner Join parks_and_recreation.parks_departments as Pd
On Sal.dept_id = Pd.department_id;
   
