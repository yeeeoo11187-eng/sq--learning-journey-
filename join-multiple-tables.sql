select *
from employee_demographics as dem
inner join employee_salary as sal
On dem.employee_id=sal.employee_id
inner join parks_departments as pd
on sal.dept_id=pd.department_id;

select*
from parks_departments;
select*
from employee_salary;