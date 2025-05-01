-- like 
use classicmodels;

select * from customers;

select * from customers where customername like "H%";
select * from customers where customername like "%l%";
select * from customers where customername like "%o";
select * from customers where customername like "mini%";

-- top (limit)
select * from customers limit 20;

-- order by
select * from customers order by creditlimit asc;
select * from customers order by creditlimit desc;

select * from customers order by customername asc;
select * from customers order by customername desc;


-- distinct keyword
select distinct city  from customers;

-- group by
select city from customers group by city;

-- count()
select city , count(city)as total_count from customers group by city;


-- sum()
select sum(creditlimit) from customers where country = "France";