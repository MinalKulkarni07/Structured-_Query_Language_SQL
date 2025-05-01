use Minal;

-- Primary key
create table employee1(
ID int primary key,
Name varchar(50),
Department enum('Sales','It','HR','Mobile Developement'),
Salary int,
Age int,
City varchar(50),
Join_Date date,
Mobile varchar(15)
);

show tables;

select * from employee1;

insert into employee1(ID,Name,Department,Salary,Age,City,Join_Date,Mobile) 
value (101,'Joy','Sales',45000,56,'Mumbai','2023-11-25',8565951545);

-- where
show databases;
use classicmodels;
show tables;

select * from customers;
select * from customers where country = "USA";
select customername,phone,creditlimit,city,state,country 
from customers where country = "USA";

-- and operator
select customername,phone,creditlimit,city,state,country 
from customers where country = "France"and city = "Nantes";

-- or operator
select customername,phone,creditlimit,city,state,country 
from customers where country = "USA" or creditlimit < 70000;

-- update query 
select customername,phone,creditlimit,city,state,country
from customers where customernumber = 112;
update customers set phone = "999555888"
where customernumber = 112;

-- delete 
use classicmodels;
select * from employee1;
SET SQL_SAFE_UPDATES=0;
delete from employee1 where id = 101;


-- the table deleted only when you are using the same databases containing the table name
drop table employee1;
