-- Made by gurshaan

use krg_1b;

create table Employee (
    emp_id int
);

insert into 
    Employee
values
    (1),(2),(3),(4),(5),(6),(7),(8),(8),(9),(9);

select 
    max(emp_id)
from (
    select emp_id
    from Employee
    group by emp_id
    having count(emp_id) = 1
) as UniqueEmployees;
