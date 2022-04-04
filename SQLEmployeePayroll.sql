
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



/********* UC8 **********/

Alter Table Employee_Payroll
ADD Phone_Number VarChar(12)

Alter Table Employee_Payroll
ADD Department varchar(30)

Alter Table Employee_Payroll
ADD Emp_address varchar(30)

select *
from Employee_Payroll
Go



/********* UC9 **********/


Alter Table Employee_Payroll
ADD Basic_Pay Money

Alter Table Employee_Payroll
ADD Deductions Money

Alter Table Employee_Payroll
ADD Taxable_Pay Money

Alter Table Employee_Payroll
ADD Income_Tax Money

Alter Table Employee_Payroll
ADD Net_Pay Money

select *
from Employee_Payroll
Go


/********* UC10 **********/

insert into Employee_Payroll
	(Name, Salary, StartDate, Gender, Phone_Number, Department, Emp_address, Basic_Pay, Deductions, Taxable_Pay, Income_Tax, Net_Pay)
	values ('Terissa', 17500, GETDATE(), 'F', 9998887770, 'Sales', 'Kozhikode',20000, 1000, 19000, 1500, 17500 );

insert into Employee_Payroll
	(Name, Salary, StartDate, Gender, Phone_Number, Department, Emp_address, Basic_Pay, Deductions, Taxable_Pay, Income_Tax, Net_Pay)
	values ('Terissa', 22000, GETDATE(), 'F', 9876546547, 'Marketing', 'Trivandrum',25000, 2000, 23000, 1000, 22000 );

select *
from Employee_Payroll
Go





