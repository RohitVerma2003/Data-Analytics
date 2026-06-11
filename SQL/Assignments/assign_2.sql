select * from Employees;

select * from Employees
where salary > (select avg(salary) from Employees);

select firstname , lastname , departmentid
from Employees where hiredate > (select min(hiredate) from Employees);

select * from Employees
where salary = (select max(salary) from Employees);

select * from Employees
where departmentid = (select departmentid from Employees where firstname = 'John' and lastname = 'Smith');

select * from Employees
where departmentid !=
(select departmentid
from Employees
group by departmentid
order by avg(salary) desc
limit 1);





