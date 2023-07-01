SELECT *
FROM Employees


--Seeing how many emloyees work for each departement

Select Department, COUNT(Department) AS CountOfEmployees
FROM Employees
group by Department

--Seeing how many of them are males and females

CREATE VIEW EmployeesInFruits as
SELECT Gender, Count(Gender) CountOfEmployeesInFruits
From Employees
where Department= 'Fruits'
GROUP By Gender

SELECT *
FROM EmployeesInFruits

SELECT Gender, Count(Gender) CountOfEmployeesInVegetables
From Employees
where Department= 'Vegetables'
GROUP By Gender

--Seeing the info of the supervisors of each department
Select *
from Departments

Select * 
from Employees Emp
Join
Departments Dep
ON Emp.EmployeeID = Dep.SupervisorID
Order by DepartmentName

--Saving the supervisors' info on a temp table
drop table if exists #TempSupervisors

Create Table #TempSupervisors (
EmployeeID INT,
FirstName varchar(255),
LastName varchar(255),
Gender varchar(255),
age int,
Department varchar(255),
SupervisorID INT,
DepartmentID INT,
DepartmentName varchar(255) )

Insert into #TempSupervisors 
Select * 
from Employees Emp
Join
Departments Dep
ON Emp.EmployeeID = Dep.SupervisorID
Order by DepartmentName

SELECT * 
FROM #TempSupervisors

--Seeing the product that was highly saled


create table #TempSales (
item varchar(255),
SumOfItem int)

INSERT INTO #TempSales values(
'Green Onion',0)
 
 INSERT INTO #TempSales values(
'Cucumber',0)


select *
from Orders

update #TempSales 
set SumOfItem = (Select count(items)
from Orders
where items like '%Cucumber%')
where item = 'Cucumber'

 select *
 from #TempSales
 
 create table Sales (
 Item varchar(255),
 CountOfItem int)

 INSERT INTO Sales  
 SELECT * 
 FROM #TempSales

 select top 1 *
 from sales 


 --Second highest saled item

 with CTEmax as (
 SELECT top 2 *
 FROM Sales 
 order by CountOfItem desc)
 select top 1 *
 from CTEmax
 order by countofitem asc

--Seeing which supplier supplies the business the most

 SELECT supplierid, COUNT(SupplierId) as CountOfSuppliers
 FROM Suppliers
 group by SupplierID
 order by CountOfSuppliers desc

 WITH CTEMaxSupplier as (
 SELECT supplierid, COUNT(SupplierId) as CountOfSuppliers
 FROM Suppliers
 group by SupplierID)
 SELECT TOP 1 SupplierID
 FROM CTEMaxSupplier
 Order by CountOfSuppliers DESC

 --Seeing what this supplier supply's to the business
   
CREATE TABLE #TempHighestSupplier (
SupplierId int,
Item varchar(255)
)

insert into #TempHighestSupplier 
 SELECT supplierid, COUNT(SupplierId) as CountOfSuppliers
 FROM Suppliers
 group by SupplierID
  
select top 1 SupplierId
from #TempHighestSupplier
order by Item desc

select * 
from Suppliers
where SupplierID = (select top 1 SupplierId
from #TempHighestSupplier
order by Item desc)


















