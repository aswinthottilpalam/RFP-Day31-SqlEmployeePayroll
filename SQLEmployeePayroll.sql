
/********* UC1 **********/
create database Payroll_service
Go

Use Payroll_service
Go


/********* UC2 **********/

Create table Employee_Payroll
(
Id int primary key identity,
Name varchar(50),
Salary money not null,
StartDate datetime default GetDate()
)

select *
from Employee_Payroll


/********* UC3 **********/

Insert into Employee_Payroll (Name, Salary, StartDate) values 
('Aswin', 5000, GETDATE()),
 ('Dhoni', 500, GETDATE()),
  ('Virat', 2500, GETDATE());


/********* UC4 **********/

select *
from Employee_Payroll


/********* UC5 **********/

SELECT Salary
from Employee_Payroll
where Name = 'Dhoni'


/********* UC6 **********/

Alter table Employee_Payroll
Add Gender char
Go
select *
from Employee_Payroll


Update Employee_Payroll
set Gender = 'M'
Where Name = 'Aswin' or Name = 'Virat' or Name = 'Dhoni'
Go

insert into Employee_Payroll (Name, Salary, StartDate, Gender) values ('Dharshana', 3500, GETDATE(), 'F')

Delete
From Employee_Payroll
where Id = 4


/********* UC7 **********/

select SUM(Salary)
from Employee_Payroll

select AVG(Salary)
from Employee_Payroll

select MIN(Salary)
from Employee_Payroll

select MAX(Salary)
from Employee_Payroll

select COUNT(Salary)
from Employee_Payroll






