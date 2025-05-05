create database Company;
use Company;
create table Employee(
EmployeeID int primary key,
FirstName varchar(50),
LastName varchar(50),
Department varchar(50),
Salary numeric
);

insert into Employee(EmployeeID,FirstName,LastName,Department,Salary)
value(101,'John','Doe','IT',60000);

update Employee set Salary = 65000 where EmployeeID = 101;

select * from Employee;

delete from Employee where EmployeeID = 101;