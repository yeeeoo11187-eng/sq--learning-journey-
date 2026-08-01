select *
From parks_and_recreation.employee_salary
Where salary >= 50000 ;

create procedure large_salaries ()
(select *
From parks_and_recreation.employee_salary
Where salary >= 50000);

Call large_salaries ();

Delimiter $$
create procedure large_salaries3()
Begin
select *
From parks_and_recreation.employee_salary
Where salary >= 50000;
select *
From parks_and_recreation.employee_salary
Where salary >= 10000;
End $$
Delimiter ;

Call large_salaries3;

Delimiter $$
create procedure large_salaries4( P_employee_id INT)
Begin
select salary 
From parks_and_recreation.employee_salary
Where employee_id=P_employee_id;

End $$
Delimiter ;

Call large_salaries4(1);