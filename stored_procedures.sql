Select *
From employee_salary;

Create procedure large_salaries ()
Select *
From employee_salary
Where salary >= 50000;

Call large_salaries()

Delimiter $$
Create procedure large_salaries2 ()
Begin
Select *
From employee_salary
Where salary >= 50000;
select*
From emplyee_salary
where salary >=10000;
End $$
Delimiter ;

Call Large_salaries ()

Delimiter $$
Create procedure large_salaries3 (P_employee_id INT)
Begin
Select salary
From employee_salary
Where employee_id = P_employee_id;

End $$
Delimiter ;

Call Large_salaries3 (1)
