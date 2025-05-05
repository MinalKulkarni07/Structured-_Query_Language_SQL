-- distinct keywords
use classicmodels;
select distinct country from customers;
select count(distinct country) from customers;

-- Constraints
create database MinalK;
use MinalK;
create table Customers (
CustomerID int primary key,
FirstName varchar(50),
LastName varchar(50)
);

create table Orders (
OrderID int primary key,
CustomerID int,
OrderDate date,
foreign key (CustomerID) references Customers(CustomerID)
);

-- inserting records into the "Customers" and "Orders" table
insert into Customers (CustomerID,FirstName,LastName)
values (1,'Minal','Kulkarni'),
(2,'Anvi','Thakare');

insert into Orders (OrderID,CustomerID,OrderDate)
values (101,1,'2024-2-25'),
(102,2,'2024-5-15');

-- unions claus
create table Customers1 (
CustomersID int primary key,
FirstName varchar(50),
LastName varchar(50),
Email Varchar(100)
);

create table Suppliers (
SupplierID int primary key,
CompanyName varchar(100),
Email varchar(100)
);

insert into Customers1 (CustomersID,FirstName,LastName,Email)
values (1,'Minal', 'Kulkarni','minal@gmail.com'),
(2,'Anvi', 'Thakare','anvi@gmail.com'),
(3,'Lokesh', 'Jadhav','lokesh@gmail.com'),
(4,'Raj', 'Gupta','raj@gmail.com'),
(5,'Minal', 'Kulkarni','minal@gmail.com');

insert into Suppliers (SupplierID, CompanyName, Email)
values
    (101, 'ABC Inc.', 'abc@gmail.com'),
    (102, 'XYZ Ltd.', 'xyz@gmail.com'),
    (103, 'Company A', 'companya@gmail.com');
    
select Email from Customers1 union select Email from Suppliers;

-- truncate table
truncate table Customers1;

