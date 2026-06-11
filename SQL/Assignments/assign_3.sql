select * from Employees;

select firstname , lastname
from Employees where firstname like 'J%';

select firstname , lastname
from Employees where lastname like '%n';

select email from Employees where email like '%john%';

select * from Employees
where length(firstname) = 5;


select * from Employees where lastname like '_a%';