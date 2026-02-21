With CTE_example1 as 
(Select employee_id,gender ,birth_date
From employee_demographics 
Where birth_date > '1985-01-01'),
CTE_example2 as 
(Select employee_id,salary 
From employee_salary
Where salary > 50000)
Select * 
From CTE_example1
Join CTE_example2
On CTE_example1.employee_id=CTE_example2.employee_id;
