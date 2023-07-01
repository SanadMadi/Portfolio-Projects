DROP TABLE Fruits

CREATE TABLE Fruits (
FruitID int NOT NULL PRIMARY KEY ,
FruitName nvarchar(255),
ExpiryDate date)

 INSERT INTO Fruits Values 
 (1,'Apple','2023-03-11'),
 (2,'Bananas','2023-04-24'),
 (3,'Tomato','2023-05-17'),
 (4,'Orange','2023-05-17'),
 (5,'Fig','2023-05-17'),
 (6,'Kewi','2023-03-04'),
 (7,'Lemon','2023-08-29'),
 (8,'Strawberry','2023-05-18'),
 (9,'Watermilon','2023-03-17'),
 (10,'Pineapple','2023-04-09'),
 (11,'Grapefruit','2023-11-21'),
 (12,'Grapes','2023-03-02'),
 (13,'Pear','2023-02-26'),
 (14,'Babaia','2024-01-01'),
 (15,'Babaia','2024-01-01')


 SELECT *
 FROM Fruits

CREATE TABLE Vegetables
(
VegetableID INT NOT NULL,
VegetableName NVARCHAR (255),
ExpiryDate Date
)

 INSERT INTO Vegetables Values 
 (01,'Lettuce','2023-03-02'),
 (02,'Pepper','2023-04-24'),
 (03,'Mint','2023-05-19'),
 (04,'Brocolli','2023-05-17'),
 (05,'Cumin','2023-05-12'),
 (06,'Cabbage','2023-03-07'),
 (07,'Red Cabbage','2023-07-29'),
 (08,'Garlic','2023-02-18'),
 (09,'Onion','2023-03-13'),
 (010,'Potato','2023-04-09'),
 (011,'Green Onion','2023-09-21'),
 (012,'Cucumber','2023-01-02')

 select * 
 from Vegetables

 Alter table vegetables
 ADD PRIMARY KEY (VegetableID)

 ALTER TABLE Fruits
 add Price decimal

 SELECT *
 FROM Fruits

 ALTER TABLE Fruits
 Alter	Column Price Decimal(10,2)

 Update Fruits
 set Price = 3.5
 Where FruitID = 14 OR  FruitName = 'Babaia'
 
 SELECT *
 FROM Fruits

 ALTER TABLE Vegetables
 Add Price decimal(10,2)

 UPDATE Vegetables
 SET Price = 3
 WHERE VegetableID = 12

 select *
 from Vegetables

 CREATE TABLE Employee (
 EmployeeID int NOT NULL PRIMARY KEY,
 FirstName Nvarchar(255),
 LastName nvarchar(255),
 Gender Nvarchar(255),
 Department Nvarchar(255)
 )

 ALTER TABLE Employee
 add age int
 

 INSERT INTO Employee VALUES
 (100, 'Anas','Jomaa','Male',21,'Fruits'),
 (101, 'Ameer','Salem','Male',24,'Vegetables'),
 (103, 'Basma','Rhoma','female',23,'Vegetables'),
 (104, 'Jamal','Hakeem','Male',31,'Fruits'),
 (105, 'Karam','Hussein','Male',19,'Fruits'),
 (106, 'Yasmeen','Amer','Female',26,'Vegetables'),
 (107, 'Basem','Jomaa','Male',22,'Fruits'),
 (108, 'Nadeer','Zaid','Male',19,'Vegetables'),
 (109, 'Anas','Zohair','Male',25,'Vegetables'),
 (110, 'Sondos','Kareem','Female',21,'Fruits'),
 (111, 'Saif','Salem','Male',20,'Vegetables'),
 (112, 'Salah','Naeem','Male',27,'Vegetables'),
 (113, 'Rahaf','Abo Khamsa','Female',26,'Fruits'),
 (114, 'Adel','Elshamy','Male',22,'Fruits'),
 (115, 'Remas','Abo Raas','Female',32,'Vegetables')

 Select * 
 from Employee
 order by age

 Create table Departments (
 SupervisorID int NOT NULL ,
 DepartmentID INT NOT NULL,
 Constraint DEprimary PRIMARY key (SupervisorID,DepartmentID)
 )
 
 ALTER TABLE Departments 
 add DepartmentName nvarchar(255)

 ALTER TABLE Departments
 ADD FOREIGN KEY (SupervisorID)
 References Employee(EmployeeID)

SELECT *
FROM Departments

INSERT INTO Departments values 
(104,1,'Fruits'),
(115,2,'Vegetables'),
(112,2,'Vegetables'),
(114,1,'Fruits'),
(109,2,'Vegetables')

CREATE TABLE Suppliers (
SupplierID int NOT NULL,
ItemSupplied nvarchar(255) not null ,
CONSTRAINT PKSU primary key (SupplierID,ItemSupplied) 
)

SELECT * 
FROM Fruits
SELECT *
FROM Vegetables

INSERT INTO Suppliers values
(1000,'Apple'),
(1000,'Bananas'),
(1001,'Lettuce'),
(1002,'Fig'),
(1002,'Strawberry'),
(1003,'Pepper'),
(1001,'Orange'),
(1004,'Tomato'),
(1005,'Kewi'),
(1005,'Lemon'),
(1003,'Potato'),
(1003,'Cucumber'),
(1003,'Onion'),
(1003,'Green Onion'),
(1006,'Watermilon'),
(1007,'Grapefruit'),
(1007,'Pineapple'),
(1008,'Pear'),
(1009,'Babia'),
(1010,'Cabbage'),
(1010,'Red Cabbage'),
(1011,'Cumin'),
(1011,'Garlic'),
(1012,'Brocolli'),
(1012,'Mint'),
(1013,'Grapes')

SELECT *
FROM Suppliers


CREATE TABLE Orders (
OrderID INT NOT NULL PRIMARY KEY,
Items nvarchar(255),
DateOfOrder datetime,
Price decimal(10,2) 
)

INSERT INTO Orders Values 
--(300,'Apples,Bananas,Lemon','2023-03-12 20:23:12',37)
(301,'Kewi,Fig,Strawberry,Lettuce,Cabbage','2023-03-12 21:17:06',105),
(302,'Apples','2023-03-13 08:01:24',16),
(303,'Onion,Green Onion,Potato,Tomato,Garlic','2023-03-13 08:14:53',51),
(304,'Orange,Grapes,Pear','2023-03-13 08:16:09',33),
(305,'Watermilon','2023-03-13 08:45:42',10),
(306,'Cucumber,Brocolli,Cumin,Pepper','2023-03-13 10:31:17',29),
(307,'Babaia,Grapefruit,Mint,Lettuce','2023-03-13 13:59:28',43),
(308,'Bananas','2023-03-13 18:01:02',17),
(309,'Pineapple,Strawberry,Mint,Onion','2023-03-14 09:27:10',27),
(310,'Lemon,Green Onion,Potato','2023-03-14 12:14:09',23),
(311,'Watermilon,Pepper,Cucumber,Tomato','2023-03-14 20:00:12',28),
(312,'Apples,Bananas,Lemon,Mint,Brocolli,Onion,Green Onion,Potato,Tomato,Cumin,Grapefruit,Pear','2023-03-15 10:11:00',132),
(313,'Kewi,Fig,Orange,Cabbage,Garlic','2023-03-15 12:21:13',49),
(314,'Lemon','2023-03-15 14:02:10',4),
(315,'Cucumber,Tomato,Pepper,Onion','2023-03-15 16:39:35',16)
SELECT * FROM Orders





