select *
from parks_and_recreation.employee_demographics
Order by age DESC
limit 3;

select *
from parks_and_recreation.employee_demographics
Order by age DESC
limit 2,1;

Limit is only limting rows .

Aliasing 

Select occupation,avg(salary) As avg_salary
From parks_and_recreation.employee_salary 
Group By occupation 
Having avg(salary) > 50000;

Aliasing is used for naming columns