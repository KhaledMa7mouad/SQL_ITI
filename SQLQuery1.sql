create database Sunshine;

--alter database Sunshine modify name = SunSet;
-- Built-in/Pre Stored Procedure like Functions in C#
--sp_renameDB 'SunSet','SunSetCo';

--alter database SunSetCo set single_user with rollback immediate;
--drop database SunSetCo;

use Sunshine;

create table Sectors
(
  Id int,
  Name nvarchar (max),
  Description nvarchar(max)
)

sp_help Sectors
insert into Sectors (Id,Name,Description) values (10 , ' Sec A' , ' Sector A');
insert into Sectors (Id,Name,Description) values (20 , ' Sec B' , ' Sector B');
insert into Sectors (Id,Name,Description) values (20 , ' Sec c' , ' Sector C');

insert into Sectors (Id,Name,Description) values (30 , ' Sec D' , ' Sector D');
insert into Sectors (Id,Name,Description) values (40 , ' Sec E' , ' Sector D'),(50 , ' Sec E' , ' Sector D');

insert into Sectors (Id,Name,Description) values (null , null , null);
--Coulmn-> Field ,, Row -> record

select Id , Name , Description from   Sectors;
select * from Sectors;

create table Departments
(
  Id int primary Key identity(1010,10),
  Name nvarchar(max) not null,
  Description nvarchar(max)
)

sp_help Departments

insert into Departments values('Web Dev','Web Development'),
                                ('QA' , 'Quality Assurance'),
                                ('BA' , 'Business Analysis');

select * from Departments;


create table Employees
(
 id int primary key identity (1,1),
 FullName nvarchar(max) not null,
 NationalId nvarchar(14) unique,
 BirthDate  datetime2, 
 hireingDate datetime2,
 Position nvarchar(30),
 Country nvarchar(max) default 'Egypt',
 Salary decimal (18,2) check(Salary >=6000 and Salary <= 60000),
 IsActive bit ,
DepartmentId int foreign key references Departments(Id) on delete no action,
ManagerId int foreign key references Employees(Id) on delete no action
);

sp_help Employees;

	alter table Departments add Notes nvarchar(max);
	--sp_rename 'Departments.Description','Summary';

	alter table Departments alter column Summary nvarchar(255) not null;
	alter table Departments alter column Notes int;

	alter table Departments drop column Summary;
	--Khaled Mahmoud -- lec11

	select*from Departments;
	sp_rename 'Departments','Divisions';
	select*from Divisions
	sp_help Divisions;
	drop table Employees;
	drop table Divisions;
	drop table Sectors;
	select * from INFORMATION_SCHEMA.TABLES;
	--Khaled Mahmoud -- lec11
	create table Departments
(
  Id int primary Key identity(1,1),
  Name nvarchar(max) not null,
  Description nvarchar(max)
)

sp_help Departments

insert into Departments values('Web Dev','Web Development'),
                                ('QA' , 'Quality Assurance'),
                                ('BA' , 'Business Analysis');

select * from Departments;

create table Employees
(
 id int primary key identity (1,1),
 FullName nvarchar(max) not null,
 NationalId nvarchar(14) unique,
 BirthDate  datetime2, 
 hireingDate datetime2,
 Position nvarchar(30),
 Country nvarchar(max) default 'Egypt',
 Salary decimal (18,2) check(Salary >=6000 and Salary <= 60000),
 IsActive bit ,
DepartmentId int foreign key references Departments(Id) on delete no action,
ManagerId int foreign key references Employees(Id) on delete no action
);
--Khaled Mahmoud  Lec11
select * from Employees;

insert into Employees(FullName,	NationalId,BirthDate,hireingDate,Position,Salary,IsActive,DepartmentId,ManagerId)
values('Omer Hassan Ali', '10020030040055', '1980/2/25','2005/10/15 09:00:00','CEO',49500.75,1,1,null)

insert into Employees(FullName,	NationalId,BirthDate,hireingDate,Position,Salary,IsActive,DepartmentId,ManagerId)
values('Bahaa Mahmoud Farid', '60050040033', '1980/5/16','2009/11/22 09:30:00','CTO',42000.25,1,1,1)

select * from Employees;
truncate table Employees;

insert into Employees(FullName, NationalId, BirthDate, hireingDate, Position, Salary, IsActive, DepartmentId, ManagerId) values('Omar Hassan Ali', '10020030040055', '1980/2/25', '2005/10/15 09:00:00', 'CEO', 49500.75, 1, 1, null);

insert into Employees 
values('Bahaa Mahmoud Farid', '60005000400033', '1980/5/16', '2009/11/22 09:30:00', 'CTO', 'Egypt', 42000.25, 1, 1, 1);

insert into Employees 
values('Ziyad Hassan Wahid', '10203040506070', '1985/10/27', '2012/12/24 09:00:00','Team Leader', 'Egypt', 22500, 1, 2, 2);

insert into Employees 
values('Hossam Ahmed Ali', '11122233344455', '1991/10/15', '2011/11/22 09:00:00', 'Team Leader', 'Egypt', 21500.25, 1, 3, 2);

insert into Employees 
values('Baraa Ashraf Essam', '10002000300044', '1993/12/29', '2012/12/24 09:00:00', 'Senior Tester', 'Kuwait', 12500.25, 1, 3, 4);

insert into Employees 
values('Mostafa Mohammed Hassan', '11022033044055', '1992/11/27', '2022/07/17 9:00:00', 'Senior Developer', 'Kuwait', 15000.75, 1, 2, 3);

insert into Employees 
values('Bassam Ayman Aly', '11002200330044', '1997/10/15', '2021/05/25 09:00:00', 'Developer', 'Egypt', 9200, 1, 2, 3);

insert into Employees 
values('Osama Mostafa Omar', '30002000100099', '1998/11/25', '2019/10/20 09:00:00', 'Tester', 'Kuwait', 6400, 1, 3, 4);

insert into Employees 
values('Hossam Ahmed Ali', '90008000700066', '1988/10/27', '2017/09/18 09:00:00', 'Developer', 'Kuwait', 10500, 1, 2, 3);

insert into Employees 
values('Mahmoud Ashraf Saad', '90007000500033', '1994/7/20', '2020/11/03 09:00:00', 'Developer', 'Egypt', 11750, 1, 2, 3);

insert into Employees 
values('Osama Omar Saad', '20004000600088', '1990/3/15', '2010/10/30 09:00:00', 'Developer', 'Oman', 12500, 1, 2, 3);

insert into Employees 
values('Bassam Sayed Allam', '99988877766655', '1987/12/13', '2024/02/12 09:00:00', 'Tester', 'Egypt', 12500, 1, 3, 4);

insert into Employees 
values('Nael Amr Mamdouh', '10102020303044', '1986/11/20', '2020/12/24 9:00:00','Senior Developer', 'Kuwait', 17250, 1, 2, 3);

insert into Employees 
values('Ayman Mostafa Sallam', '90807060504030', '1995/5/27', '2023/08/28 09:00:00','Tester', 'Oman', 19500, 1, 3, 4);

insert into Employees 
values('Wael Mostafa Farid', '55544433322211', '1998/10/23', '2024/03/13 09:00:00','Tester', 'Egypt', 9500, 1, 3, 4);

select * from Employees;


drop table Employees;
 drop table Departments;

create table Departments
(
                  --auto-generated seed, increment
 Id int primary key identity(1, 1),
 Name nvarchar(max) not null,
 Description nvarchar(max)
)

insert into Departments values('TM', 'Top Management'), 
         ('Web Dev', 'Web Development'), 
         ('QA', 'Quality Assurance'),
         ('BA', 'Business Analysis');

select * from Departments;

create table Employees
(
 Id int primary key identity(1,1),
 FullName nvarchar(max) not null,
 NationalId nvarchar(14) unique,
 BirthDate datetime2,
 hireingDate datetime2,
 Position nvarchar(30),
 Country nvarchar(max) default 'Egypt',
 Salary decimal(18,2) check(Salary >= 6000 and Salary <= 60000),
 IsActive bit,
 DepartmentId int foreign key references Departments(Id) on delete no action,
 ManagerId int foreign key references Employees(Id) on delete no action
);

select * from Employees;
--Filtering Qs
select * from Employees where Position = 'Developer' ;
select FullName , Position , Salary , Country from Employees where Position = 'Developer';

-- Not equal 
select * from Employees where Position != 'Developer' ;
select * from Employees where Position <> 'Developer' ;

--and
select * from Employees where Position = 'Developer' and Country = 'Egypt';
select * from Employees where Salary >= 10500 and Salary <= 12500;

--between
select * from Employees where Salary between 10500 and 12500; 
select * from Employees where Salary not between 10500 and 12500;

--or
select * from Employees where  Country = 'Kuwait' or Country = 'Oman';

--in 
select * from Employees where  Country in ('Kuwait','Oman')
select * from Employees where  Country not in ('Kuwait','Oman')

--String concatenation (operator +) -- alias -> as
select FullName +' ('+ Position + ')' as Employee from Employees;

--Wild Cards
-- % -> zero or more characters
select * from Employees where FullName like 'Osama%';
select * from Employees where FullName like '%Ali';
select * from Employees where FullName like '%m%';
--Underscore _ -> one Char
update Employees set FullName = 'Usama Mostafa Omar' where Id = 8;
select * from Employees where FullName like '_sama%';
select * from Employees where FullName like '%Al_';

--[] -> any character
select *from Employees where FullName like '[owz]%';
select *from Employees where FullName like '%[bt]%';
select *from Employees where FullName like '%[dn]';
select *from Employees where FullName not like '%[dn]';

--[^] -> not any char
select *from Employees where FullName like '[^bom]%';

--sorting/ordering
select* from Employees order by FullName asc --ascending;
select* from Employees order by FullName --ascending;
select* from Employees order by FullName desc --ascending;
select* from Employees order by Salary asc ;

--top n

select top 3 * from Employees;
select top 3 * from Employees order by Salary desc ;
select top 3 * from Employees order by Salary asc ;

--alias
select FullName as Employee , Position as Job , Salary from Employees;
select FullName as[Full Name] , Position as Job , Salary from Employees;
select FullName as 'Full Name' , Position as Job , Salary from Employees;

--Computed Columns
select *, (Salary*12) as 'Annual Salary' from Employees;
alter table Employees add Annual_Salary as (Salary*12);
sp_help Employees

-- Aggregate Functions (SUM , COUNT , AVG , MAX , MIN)
select SUM(Salary) as 'Total Salaries' from Employees;
select SUM(Salary) as 'Egypt Salaries' from Employees where Country = 'Egypt';

update Employees set Salary = null where Id = 10;
select COUNT(Salary) as 'Number of Salaries' from Employees;
select COUNT(Id) as 'Number of Employees' from Employees;
select COUNT(*) as 'Number of Employees' from Employees;

select AVG(Salary) as 'AVG of Salaries' from Employees;
select AVG(Salary) as 'AVG Egypt Salaries' from Employees where Country = 'Egypt'   ;

select MAX(Salary) as 'Maximum Salary' from Employees;
select MIN(Salary) as 'Minimum Salary' from Employees;

--Group by
select count(Id) 'Egypt Employees' from Employees where Country = 'Egypt';
select Country ,count(Id) 'Egypt Employees' from Employees group by Country;
select Position ,count(Id) 'Number of Employees' from Employees group by Position;
select Country,Position ,count(Id) 'Number of Employees' from Employees group by Position,Country;
select Country , sum(Salary) as 'Total Salaries'from Employees group by Country;

use Sunshine;
--where must come before group by
select Position , COUNT(Id) as 'Egyption Employees' 
from Employees where Country = 'Egypt' group by Position 

-- having is like where but with aggregate but comes after group by
select Position , COUNT(Id) as 'Number Employees' 
from Employees group by Position having COUNT(Id)>1

-- variables 
-- variables declaration 
--declare @VARIABLE_NAME DATA_Type;

declare @NumberofCustomers int;

-- variables Assignment 
--set @VARIABLE_NAME = VALUE or select @VARIABLE_NAME = VALUE ;
set @NumberofCustomers = 30;

--Initialization 
declare @JanNewCustomers int = 15;
set @NumberofCustomers += @JanNewCustomers;

select @NumberofCustomers;
select @NumberofCustomers as [Number of Customers];

-- printing on messages
print (@NumberofCustomers);
print @NumberofCustomers;

--Type Conversion
-- Implicit type Conversion
declare @cost decimal (18,2) = 1500.75;
select '3000' + @cost;

-- Explicit type Conversion
--declare @price decimal (18,2) = 1000.25;
--select 'price' + @price; //error

 --CAST()
declare @price decimal (18,2) = 1000.25;
select 'Price: ' + CAST(@price as varchar);


declare @productionDate datetime2;
set @productionDate = GETDATE();
select 'Producation Date: ' + cast (@productionDate as varchar)

--CONVERT()
declare @profit decimal (18,2) = 200.75;
select 'Profit: ' + CONVERT(varchar, @profit);

declare @expiryDate datetime2 = '2026-11-20';
--CONVERT(target_type, expression , data_style)
select 'Expiry Date: ' + CONVERT(varchar,@expiryDate,101);
select 'Expiry Date: ' + CONVERT(varchar,@expiryDate,102);
select 'Expiry Date: ' + CONVERT(varchar,@expiryDate,103);
select 'Expiry Date: ' + CONVERT(varchar,@expiryDate,104);

--Condition Statements IF
declare @score float= 97.5 ;
if (@score>=50)
  select 'Passed'
else
  select 'Failed'


  DECLARE @score FLOAT = 25.6

IF (@score >= 90)
    SELECT 'Perfect'
ELSE IF (@score >= 80)
    SELECT 'Very Good'
ELSE IF (@score >= 65)
    SELECT 'Good'
ELSE IF (@score >= 50)
    SELECT 'Passed'
ELSE IF (@score >= 40)
    SELECT 'Weak'
ELSE
    SELECT 'Very Poor'



--case(case when.....then....else.....end)
select FullName, case when Country = 'Egypt' then 'Citizen' end from Employees;
select FullName, case when Country = 'Egypt' then 'Citizen' else 'Foreigner' end from Employees;

-- while loop
declare @i int = 0;
while (@i < 10)
begin
set @i +=1
  if(@i%2=0)
begin
    continue;
	end
  print  @i;
 end


declare @i int = 0;
while (@i < 10)
begin
   set @i +=1
     print @i;
 if(@i = 5)
  begin
     break; 
     e
end

 











