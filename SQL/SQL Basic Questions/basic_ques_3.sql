select * from customers;
select * from orders;
select * from products;

select customername
from customers
where customerid in
(select customerid from orders);

select customername
from customers
where customerid not in
(select customerid from orders);

select *
from orders o
left join products p
on o.productid = p.productid;

select c.customername as name , o.orderid , o.orderdate , o.productid
from customers c
left join orders o
on c.customerid = o.customerid;

select * 
from products
where productid not in
(select productid from orders);

select c.customername , count(o.orderid) as total_orders
from customers c
inner join orders o
on c.customerid = o.customerid
group by c.customerid;

select c.customername , p.productname , o.orderdate
from customers c, products p , orders o
where c.customerid = o.customerid and o.productid = p.productid;





