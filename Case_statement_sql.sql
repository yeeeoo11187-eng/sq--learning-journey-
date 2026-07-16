select *
From parks_and_recreation.employee_demographics;

select *
From parks_and_recreation.employee_salary;

select *
From parks_and_recreation.parks_departments;

Select first_name,last_name,age,
Case 
When age = 30 then 'Young'
When age > 30 then 'middle age '
When age > 50 then 'old'
End as age_group
From parks_and_recreation.employee_demographics;


Select first_name,last_name,salary,dept_id,
Case 
When salary = 50000 then salary *0.05
when salary > 50000 then salary *0.07
End as New_Salary ,
Case
When dept_id = 6 then salary * 0.10
End as Bonus 
From parks_and_recreation.employee_salary;

