select first_name,
replace (first_name,'a','z'),
locate ('a','Andy'),
concat(first_name,'_',last_name)
from employee_demographics ;

select first_name,last_name,salary,
case
When salary <50000 then salary*1.05 
when salary >50000 then salary*1.07
end as Salary_increase ,
case 
when dept_id = 6 then salary*1.1
end as Bonus 
from employee_salary;

select first_name,last_name,age,
Case
When age < 30 then 'young'
when age between 30 and 50  then 'middle'
else 'old'
ENd as Age_group
from employee_demographics ;