Select *
From employee_demographics 
Where employee_id In ( select employee_id
from employee_salary 
where dept_id =1 ) ;

select first_name, salary,
(select avg(salary)
from employee_salary)
from employee_salary;

Select gender ,avg(age),min(age),max(age),count(age)
From employee_demographics 
Group By gender;

Select gender , avg(`max(age)`)
From (Select gender ,avg(age),min(age),max(age),count(age)
From employee_demographics 
Group By gender) as aggregrate_table 
Group By gender;

Select  avg(Min_age)
From (Select gender ,
avg(age) as Avg_age,
min(age) as Min_age,
max(age) as Max_age,
count(age)
From employee_demographics 
Group By gender) as aggregrate_table 
;


