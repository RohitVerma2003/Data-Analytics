select * from EmployeeSales;

select department , sum(saleamount) as total_sale
from EmployeeSales group by department;

select employeeid , count(*) as num_of_sales
from EmployeeSales group by employeeid;

select department , avg(saleamount) as total_sale
from EmployeeSales group by department;

select employeeid , sum(saleamount) as total_sale
from EmployeeSales group by employeeid;

select extract(month from saledate) AS month , sum(saleamount) as total_sales
from EmployeeSales
group by month;


