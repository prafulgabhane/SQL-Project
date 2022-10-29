--UC1-Create database
create database Payroll_Service;
--UC2-Create table
create table EmployeePayroll(ID int identity(1,1)primary key,Empnam varchar(200),salary bigint,Startdate date)
--UC-3-Insert record
insert into EmployeePayroll values('Raju',21000,'2020-2-2')
--UC-4-retrive data
select * from EmployeePayroll
--UC-5-
select * from EmployeePayroll where Startdate Between Cast ('2020-02-02' as date) and Getdate()
--uc-6
alter table EmployeePayroll add Gender char(1)
update EmployeePayroll set Gender='M' where Empnam='Raju'
--UC-7
select Sum(salary) as Total_SUM from EmployeePayroll where Gender='M' group by Gender
select Avg(salary) as AvgSalary from EmployeePayroll where Gender='M' group by Gender
select Min(salary) as MinSalary from EmployeePayroll where Gender='M' group by Gender
select Max(salary) as MaxSalary from EmployeePayroll where Gender='M' group by Gender
select count (*) as totalrecord from EmployeePayroll group by Gender
--UC-8
select * from EmployeePayroll
alter table EmployeePayroll add PhoneNumber bigint, Address varchar(200),
Departement varchar(200) not null default ('tester')
--UC-9
alter table EmployeePayroll add  BasicPay float not null default ('0'), Deductions float not null default ('0'), TaxablePay float not null default ('0'),
IncomeTax float not null default ('0'), NetPay float  not null default ('0')

EXEC sp_rename 'EmployeePayroll.NetPay', 'BasicPay';

alter table EmployeePayroll add Deductions float not null default ('0'), TaxablePay float not null default ('0'),
IncomeTax float not null default ('0'), NetPay float  not null default ('0')
select * from EmployeePayroll

--UC-10
insert into EmployeePayroll
(Empnam,Startdate,Gender,BasicPay,Deductions,TaxablePay,IncomeTax,Netpay)
values('Terisa','2019-01-03','F',3000000.00,1000000.00,2000000.00,500000.00,1500000.00);

select * from EmployeePayroll where Empnam='Terisa'
