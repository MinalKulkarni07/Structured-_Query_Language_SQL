create database Book_Store;   -- creating a database to store the tables
use Book_Store; -- using this database for the following operations

-- Q1. 
-- creating Authors table to store Authors details
create table Authors(
Author_ID int primary key,       -- primary key to ensure, no two author have the same id.  
First_Name varchar(50) not null,    -- the purpose of not null here is,  
Last_Name varchar(50) not null,     -- that the the value should not be empty.
Birth_Year int,
Nationality varchar(50)
);
select * from Authors;

-- Q2.
-- creating Books table to store Books details
create table Books(
Book_ID int primary key,
Title varchar(50),
Author_ID int,
Publicaton_Year int,
Genre varchar(50),
Price decimal(10, 2) check(Price > 0),
Stock int default 0,
foreign key (Author_ID) references Authors(Author_ID) -- using foreign key to link Authors_ID to Authors table
);
select * from Books;

-- Q3.
-- inserting data in the table 
insert into Authors(Author_ID,First_Name,Last_Name,Birth_Year,Nationality)
Values
(1,'Daniel','Franklin',1988,'France'),
(2,'Amelia','Patric',1992,'Switzerland'),
(3,'Sudha','Murthy',1950,'India');
select * from Authors; -- selecting table to show table containts

-- Q4.
insert into Books(Book_ID,Title,Author_ID,Publicaton_Year,Genre,Price,Stock)
Values
(1011,'Hack Your Habits',2,2013,'Productivity',22.35,7),
(1012,'Life of Human',3,2020,'Philosophy',20.45,10),
(1013,'Brains at Work',1,2015,'Psychology',23.48,8),
(1014,'Minimalist Hustle',1,2017,'Self-help',25,12),
(1015,'Rain Between the Pages',2,2012,'Literary Fiction',17.83,10);

select * from Books;

-- Q5.
-- finding the books whose prices range between $15 and $25
select * from Books    -- select used to select columns from books table 
where Price between 15 and 25; 
-- "where" and "between" == filter the results to only include books to match given condition  

-- Q6.
-- finding books with either "Python" or "Java" in their titles
select * from Books where Title like '%Python%' or 'Java';

-- here in this table,"Python" or "Java" does not exist so, 
-- finding books with either "Human" or "Rain" in their titles
select * from Books where Title like '%Human%' or '%Rain%';
-- "like" == for pattern matching in "where" clauses

-- listing authors who were born after 1980 and either American or British
select * from Authors where Birth_Year > 1980 and Nationality in ('Ameriva','Britain');

-- Q7.
-- here in this table,American or British does not exist so, 
-- listing authors who were born after 1980 and either indian or french
select * from Authors where Birth_Year > 1980 and Nationality in ('India','France');
-- "and" used when all conditions must be true
-- "in" used to check if a values is equal to any value in a list

create table Customers(
Customer_ID int primary key,
First_Name varchar(50) not null,
Last_Name varchar(50) not null,
Email varchar(255) not null unique,
Join_Date int
);

create table Orders(
Order_ID int,
Customer_ID int,
Book_ID int,
Order_Date int,
Quantity int,
Total_Amount ,
foreign key Customer_ID references Customers(Customer_ID)





insert into Customers(Customer_ID,First_Name,Last_Name,Email,Join_Date)
 