select * from Employees;
select * from Departments;

select firstname , lastname , departmentname
from Employees e , Departments d
where e.departmentid = d.departmentid;

select d.departmentname , e.*
from Departments d
left join Employees e
on d.departmentid = e.departmentid;

select *
from Employees
where departmentid not in
(select departmentid from Departments);

select * 
from Employees
where departmentid in
(select departmentid from Employees where firstname like 'Jane' and lastname like 'Doe');


select * from Departments
where departmentid in
(select departmentid
from Employees
group by departmentid
order by sum(salary) desc
limit 1);



