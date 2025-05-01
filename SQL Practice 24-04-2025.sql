-- list of databases
show databases;

-- create database
create database Minal;

-- select database 
use Minal;

-- delete database
-- drop database Minal

-- create table
create table Employee(
ID int,
Name varchar(50),
Department enum('Sales', 'IT', 'HR', 'Mobile Developement'),
Salary int,
Age int,
City varchar(50),
Join_Date date
);

-- show list of table
show tables;

-- open table and check data
select * from Employee;

-- insert record into table
insert into Employee(ID,Name,Department,Salary,Age,City,Join_Date)
value(101,'Anvi','Sales',45000,27,'Pune','2024-04-15'); 

-- Multiple
insert into Employee(ID,Name,Department,Salary,Age,City,Join_Date)
values(102,'Raj','IT',35000,30,'Mumbai','2024-04-15'),
(103,'Arnav','HR',55000,33,'Pune','2024-04-15'),
(104,'Ram','IT',35000,25,'Mumbai','2024-04-15'),
(105,'Shreya','Sales',45000,28,'Pune','2024-04-15'),
(106,'Minal','HR',55000,32,'Mumbai','2024-04-15'),
(107,'Vishakha','Mobile Developement',60000,31,'Pune','2024-04-15'),
(108,'Manasi','IT',35000,35,'Pune','2024-04-15'),
(109,'Tanmay','Mobile Developement',60000,27,'Pune','2024-04-15'),
(110,'Deepak','HR',55000,34,'Pune','2024-04-15');



