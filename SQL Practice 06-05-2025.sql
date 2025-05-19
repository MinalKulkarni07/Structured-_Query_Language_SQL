-- left join

create database mpk;

use mpk;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES
    (1,'Anvi','Mathur','anvimathur@booksstore.com'),
    (2,'Tanvi','Thakur','tanvithakur@booksstore.com'),
    (3,'Raj','Patel','rajpatel@booksstore.com'),
    (4,'Arnav','Gupta','arnavgupta@booksstore.com'),
    (5,'Jui','Jadhav','juijadhav@booksstore.com'),
    (8,'Ravi','Sharma','ravisharma@booksstore.com'),
    (10,'Geeta','Jog','geetajog@booksstore.com');

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (101,1,'2023-07-15',275.00),
    (102,2,'2023-02-20',200.50),
    (103,3,'2022-05-26',353.75),
    (111,11,'2024-05-26',150.00),
    (109,4,'2023-05-15',360.00),
    (112,9,'2023-02-20',225.00);


select * from customers;
select * from orders;


select customers.firstname , customers.email , orders.orderdate , orders.totalamount
from customers left join orders 
on customers.customerid = orders.customerid;


-- right join

select customers.firstname , customers.email , orders.orderdate , orders.totalamount
from customers right join orders 
on customers.customerid = orders.customerid;

-- inner join
select customers.firstname , customers.email , orders.orderdate , orders.totalamount
from customers inner join orders 
on customers.customerid = orders.customerid;

-- full join 
select customers.firstname , customers.email , orders.orderdate , orders.totalamount
from customers left join orders 
on customers.customerid = orders.customerid
union
select customers.firstname , customers.email , orders.orderdate , orders.totalamount
from customers right join orders 
on customers.customerid = orders.customerid;

-- Date 

SELECT NOW();             -- e.g., 2025-05-05 14:30:00
SELECT CURDATE();        -- e.g., 2025-05-05
SELECT CURTIME();         -- e.g., 14:30:00
SELECT CURRENT_TIMESTAMP(); -- e.g., 2025-05-05 14:30:00

select orderdate , year(orderdate) from orders;
select orderdate , month(orderdate) from orders;
select orderdate , day(orderdate) from orders;

-- DATE_ADD
select orderdate , DATE_ADD(orderdate , interval 7 Day) as new_date from orders;
select orderdate , DATE_ADD(orderdate , interval 7 year) as new_date from orders;
select orderdate , DATE_ADD(orderdate , interval 7 month) as new_date from orders;

-- DATE_SUB

select orderdate , DATE_SUB(orderdate , interval 4 month) as new_date from orders;
select orderdate , DATE_SUB(orderdate , interval 4 Day) as new_date from orders;
select orderdate , DATE_SUB(orderdate , interval 4 year) as new_date from orders;

-- CONCAT

select * from customers;


-- CONCAT

select * , concat(firstname," ",lastname) as full_name from customers;

-- LENGTH
select * , LENGTH(concat(firstname," ",lastname)) as full_name from customers;

select * , upper(concat(firstname," ",lastname)) as full_name from customers;


-- SUBSTRING

select firstname , SUBSTRING(firstname,1,2) as Nckname from customers;

-- REPLACE
select email , REPLACE(email,'booksstore.com','bs.in') as new_email 
from customers;

