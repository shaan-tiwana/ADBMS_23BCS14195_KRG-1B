--made by Gurshaan
use krg_1b;

create table Department (
    id int primary key,
    dept_name varchar(50)
);

create table Employee (
    id int,
    name varchar(50),
    salary int,
    department_id int,
    foreign key (department_id) references Department(id)
);

insert into Department
values
    (1, 'IT'),
    (2, 'Sales');

insert into Employee
values
    (1, 'Joe', 70000, 1),
    (2, 'Jim', 90000, 1),
    (3, 'Henry', 80000, 2),
    (4, 'Sam', 60000, 2),
    (5, 'Max', 90000, 1);

select * from Employee;

select * from Department;

select 
    e.name as 'employee_name',
    e.salary as 'employee_salary',
    d.dept_name as 'department_name'
from 
    Employee e
inner join 
    Department d
on 
    e.department_id = d.id
where 
    e.salary in (
        select max(e2.salary)
        from Employee e2
        where e2.department_id = e.department_id
    )
order by
    d.dept_name;
