Create Temporary Table Tem_table
(first_name Varchar (50),
last_name Varchar (50),
Favorite_Movie Varchar (100)
);

Select *
From Tem_table;

INSERT INTO Tem_table
Values ('Yee','Oo','Battle of Fate');

Select *
From Tem_table;

Select *
From employee_salary;

Create Temporary Table Salary_over_50K
(select*
From employee_salary
Where salary >= 50000);

Select *
From Salary_over_50K



