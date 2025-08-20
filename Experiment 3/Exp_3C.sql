-- made by Gurshaan
use KRG_1B;

create table TableA (
    emp_id int primary key,
    ename varchar(50),
    salary int
);

create table TableB (
    emp_id int primary key,
    ename varchar(50),
    salary int
);

insert into TableA 
values
    (1, 'Gurpreet', 1000),
    (2, 'Manit', 300);

insert into TableB
values
    (2, 'Manit', 400),
    (3, 'Sukhmandeep', 100);

select
    emp_id as 'Employee ID',
    ename as 'Name',
    min(salary) as 'Salary'
from (
    select * from TableA
    union all
    select * from TableB
) as Combined_Salaries
group by
    emp_id, ename;
